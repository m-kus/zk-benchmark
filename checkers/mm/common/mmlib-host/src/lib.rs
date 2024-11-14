use std::error::Error;
use std::time::Instant;
use std::ops::Deref;
use std::{
    fs,
    io::{BufRead as _, BufReader},
};
use std::collections::BTreeMap;

use mmtokens::{cast_tokens, preparse, show_symbol_tokens, strip_comments, SimpleIdentTable, Token, VarIdx};
use mmtokens::{Symbol, CLOSE_PAREN_SYM, OPEN_PAREN_SYM};
use mmtokens::codes::{SYM_BASE, VAR_BASE, CLOSE_PAREN, OPEN_PAREN};
pub use mmtokens::{IdentTable, TokenCode};
use Token::*;

pub use mmlib::Label;
use mmlib::{stmt, InputStatement, MMHints, Proof, SliceTokens, Tokens, MM, VecMap};

pub trait TokenProcessor<'input> {
    /// Enters a new frame
    fn new_frame(&mut self);
    /// Leaves a frame
    fn pop_frame(&mut self);
    /// Process a constant statement
    fn handle_c(&mut self, stat: &'input stmt);
    /// Process a variable statement
    fn handle_v(&mut self, stat: &'input stmt);
    // Process a variable-type hypothesis
    fn handle_f(&mut self, label: Option<Label>, stat: &'input stmt);
    // Process an axiom
    fn handle_a(&mut self, label: Option<Label>, stat: &'input stmt) -> bool;
    // Process a logical-type hypothesis
    fn handle_e(&mut self, label: Option<Label>, stat: &'input stmt);
    // Process a provable assertion and its proof
    fn handle_p(&mut self, label: Option<Label>, claim: &'input stmt, proof: Proof) -> bool;
    // Process a disjoint-variable restriction
    fn handle_d(&mut self, stat: &'input stmt);

    fn process_tokens(&mut self, tokens: &'input [TokenCode]) -> bool {
        process_tokens(&mut SliceTokens::new(tokens), self)
    }
}

/// A TokenProcessor that simply copies tokens
/// Should be used as a base for token transformations
pub struct CopyTokens(Vec<TokenCode>);

impl Into<SliceTokens<'static>> for CopyTokens {
    fn into(self) -> SliceTokens<'static> {
        SliceTokens::new(self.as_slice())
    }
}

impl CopyTokens {
    pub fn new() -> Self {
        CopyTokens(Vec::new())
    }
    pub fn as_slice(self) -> &'static [TokenCode] {
        self.0.leak()
    }

    fn push_stat_contents(&mut self, stat: &stmt) {
        let tok_stat: Vec<TokenCode> = stat.iter().map(|s| s.token_code()).collect();
        self.0.extend(tok_stat);
    }
    fn push_stat(&mut self, stat: &stmt) {
        self.push_stat_contents(stat);
        self.0.push(Token::DelimEndStmt.to_code());
    }
    fn push_claim(&mut self, stat: &stmt) {
        self.push_stat_contents(stat);
        self.0.push(Token::DelimEndClaim.to_code());
    }
    fn push_proof(&mut self, stat: Proof) {
        self.0.extend_from_slice(stat);
        self.0.push(Token::DelimEndStmt.to_code());
    }
}

impl TokenProcessor<'_> for CopyTokens {
    fn new_frame(&mut self) {
        self.0.push(Token::DelimOpenBlock.to_code());
    }

    fn pop_frame(&mut self) {
        self.0.push(Token::DelimCloseBlock.to_code());
    }

    fn handle_c(&mut self, stat: &stmt) {
        self.0.push(Token::DelimC.to_code());
        self.push_stat(stat);
    }

    fn handle_v(&mut self, stat: &stmt) {
        self.0.push(Token::DelimV.to_code());
        self.push_stat(stat);
    }

    fn handle_f(&mut self, label: Option<Label>, stat: &stmt) {
        self.0.push(label.unwrap());
        self.0.push(Token::DelimF.to_code());
        self.push_stat(stat);
    }

    fn handle_a(&mut self, label: Option<Label>, stat: &stmt) -> bool {
        self.0.push(label.unwrap());
        self.0.push(Token::DelimA.to_code());
        self.push_stat(stat);
        true
    }

    fn handle_e(&mut self, label: Option<Label>, stat: &stmt) {
        self.0.push(label.unwrap());
        self.0.push(Token::DelimE.to_code());
        self.push_stat(stat);
    }

    fn handle_p(&mut self, label: Option<Label>, claim: &stmt, proof: Proof) -> bool {
        self.0.push(label.unwrap());
        self.0.push(Token::DelimP.to_code());
        self.push_claim(claim);
        self.push_proof(proof);
        true
    }

    fn handle_d(&mut self, stat: &stmt) {
        self.0.push(Token::DelimD.to_code());
        self.push_stat(stat);
    }
}

pub struct TurnProofsIntoAxioms {
    tokens: CopyTokens,
    is_turnable: Box<dyn Fn(InputStatement) -> bool>,
}

impl TurnProofsIntoAxioms {
    pub fn new(predicate: impl Fn(InputStatement) -> bool + 'static) -> Self {
        Self {
            tokens: CopyTokens::new(),
            is_turnable: Box::new(predicate),
        }
    }
    pub fn as_slice(self) -> &'static [TokenCode] {
        self.tokens.as_slice()
    }
}

impl TokenProcessor<'static> for TurnProofsIntoAxioms {
    fn new_frame(&mut self) {
        self.tokens.new_frame()
    }

    fn pop_frame(&mut self) {
        self.tokens.pop_frame()
    }

    fn handle_c(&mut self, stat: InputStatement) {
        self.tokens.handle_c(stat)
    }

    fn handle_v(&mut self, stat: InputStatement) {
        self.tokens.handle_v(stat)
    }

    fn handle_f(&mut self, label: Option<Label>, stat: InputStatement) {
        self.tokens.handle_f(label, stat)
    }

    fn handle_a(&mut self, label: Option<Label>, stat: InputStatement) -> bool {
        self.tokens.handle_a(label, stat)
    }

    fn handle_e(&mut self, label: Option<Label>, stat: InputStatement) {
        self.tokens.handle_e(label, stat)
    }

    fn handle_p(&mut self, label: Option<Label>, claim: InputStatement, proof: Proof) -> bool {
        if (self.is_turnable)(claim) {
            self.handle_a(label, claim)
        } else {
            self.tokens.handle_p(label, claim, proof)
        }
    }

    fn handle_d(&mut self, stat: InputStatement) {
        self.tokens.handle_d(stat)
    }
}

impl From<TurnProofsIntoAxioms> for SliceTokens<'static> {
    fn from(value: TurnProofsIntoAxioms) -> Self {
        value.tokens.into()
    }
}

/// A TokenProcessor which uses a predicate `split_here` to split the tokens into multiple slices
/// The predicate will check axiom and provable statements names and, if matching, will split
/// after their end.
pub struct SplitTokens {
    tokens: CopyTokens,
    awaiting_split: bool,
    depth: u32,
    split_here: Box<dyn Fn(Option<TokenCode>) -> bool>,
    splitted_tokens: Vec<Vec<TokenCode>>,
}

impl SplitTokens {
    /// Initializes the state of the SplitTokens with the given predicate
    pub fn new(predicate: impl Fn(Option<Label>) -> bool + 'static) -> Self {
        Self {
            tokens: CopyTokens::new(),
            awaiting_split: false,
            depth: 1,
            split_here: Box::new(predicate),
            splitted_tokens: Vec::new(),
        }
    }
    /// The number of slices into which the processed token stream was split.
    pub fn len(&self) -> usize {
        self.splitted_tokens.len()
    }
    /// Yields the slices of tokens (and consumes self)
    pub fn into(mut self) -> Vec<Vec<TokenCode>> {
        if self.tokens.0.len() > 0 {
            self.splitted_tokens.push(self.tokens.0);
        }
        self.splitted_tokens
    }
    fn split_tokens(&mut self) {
        assert!(self.depth == 1);
        self.splitted_tokens.push(self.tokens.0.clone());
        self.tokens.0.clear();
        self.awaiting_split = false;
    }
}

impl TokenProcessor<'static> for SplitTokens {
    fn new_frame(&mut self) {
        self.tokens.new_frame();
        self.depth += 1;
    }

    fn pop_frame(&mut self) {
        self.tokens.pop_frame();
        assert!(self.depth > 1);
        self.depth -= 1;
        if self.awaiting_split && self.depth == 1 {
            self.split_tokens();
        }
    }

    fn handle_c(&mut self, stat: InputStatement) {
        self.tokens.handle_c(stat);
    }

    fn handle_v(&mut self, stat: InputStatement) {
        self.tokens.handle_v(stat);
    }

    fn handle_f(&mut self, label: Option<Label>, stat: InputStatement) {
        self.tokens.handle_f(label, stat);
    }

    fn handle_e(&mut self, label: Option<Label>, stat: InputStatement) {
        self.tokens.handle_e(label, stat);
    }

    fn handle_p(&mut self, label: Option<Label>, claim: InputStatement, proof: Proof) -> bool {
        let ok = self.tokens.handle_p(label, claim, proof);
        if ok {
            if (self.split_here)(label) {
                println!(
                    "Detected provable statement with provided label. Splitting tokens after it."
                );
                if self.depth == 1 {
                    self.split_tokens();
                } else {
                    self.awaiting_split = true;
                }
            }
        }
        ok
    }

    fn handle_d(&mut self, stat: InputStatement) {
        self.tokens.handle_d(stat);
    }

    fn handle_a(&mut self, label: Option<Label>, stat: InputStatement) -> bool {
        let ok = self.tokens.handle_a(label, stat);
        if ok {
            if (self.split_here)(label) {
                println!("Detected axiom with provided label. Splitting tokens after it.");
                self.split_tokens();
            }
        }
        ok
    }
}

use clap::Args;
#[derive(Args)]
pub struct ToAxiomArgs {
    /// Turns proof statements whose claim starts with any of the provided symbols into axioms.
    /// Default targets are #Pattern and #Variable
    #[arg(long="to-axiom", num_args=0.., value_name="SYMBOL", default_missing_values=["#Pattern", "#Variable"])]
    pub provable_to_axiom: Vec<String>,

    /// Turn all proof statments into axioms
    #[arg(long)]
    pub all_to_axiom: bool,
}
impl Default for ToAxiomArgs {
    fn default() -> Self {
        ToAxiomArgs {
            provable_to_axiom: vec![],
            all_to_axiom: false,
        }
    }
}

impl ToAxiomArgs {
    pub fn has_effect(&self, known_tokens: &impl IdentTable) -> bool {
        self.all_to_axiom
            || self
                .provable_to_axiom
                .iter()
                .any(|s| known_tokens.lookup_label(s.as_str()).is_some())
    }

    pub fn process(&self, known_tokens: &impl IdentTable, tokens: Vec<TokenCode>) -> Vec<TokenCode> {
        if self.all_to_axiom {
            println!("Serializing provable-to-axiom tokens: ALL");
        } else {
           println!("Serializing provable-to-axiom tokens: {:?}", self.provable_to_axiom);
        }
        if self.all_to_axiom {
            let mut copy_tokens = TurnProofsIntoAxioms::new(|_| true);
            unsafe {
                let tokens_ref =
                    core::mem::transmute::<&[TokenCode], &'static [TokenCode]>(tokens.as_ref());
                process_tokens(&mut SliceTokens::new(tokens_ref), &mut copy_tokens);
            }
            copy_tokens.tokens.0
        } else {
            let provable_to_axiom_toks: Vec<TokenCode> = self
                .provable_to_axiom
                .iter()
                .flat_map(|name| known_tokens.lookup_label(name.as_str()))
                .collect();
            if provable_to_axiom_toks.is_empty() {
                tokens
            } else {
                let mut copy_tokens = TurnProofsIntoAxioms::new(move |stmt| {
                    provable_to_axiom_toks.contains(&(&stmt[0]).token_code())
                });
                unsafe {
                    let tokens_ref =
                        core::mem::transmute::<&[TokenCode], &'static [TokenCode]>(tokens.as_ref());
                    process_tokens(&mut SliceTokens::new(tokens_ref), &mut copy_tokens);
                }
                copy_tokens.tokens.0
            }
        }
    }
}

#[derive(Args, Default)]
pub struct SplitTokensArgs {
    /// Splits the token stream after the provided name of an axiom/provable statement.
    #[arg(long = "split-tokens-at", value_name = "SYMBOL")]
    pub split_tokens_at: Option<String>,

    /// Saves the intermediate zkvm image into given file.
    #[arg(
        long = "save-session",
        value_name = "FILE_NAME",
        requires = "split_tokens_at",
        conflicts_with = "restore_session"
    )]
    pub save_session: Option<String>,

    /// Restores the intermediate zkvm image from given file.
    #[arg(
        long = "restore-session",
        value_name = "FILE_NAME",
        requires = "split_tokens_at",
        conflicts_with = "save_session"
    )]
    pub restore_session: Option<String>,
}

impl SplitTokensArgs {
    pub fn enabled(&self) -> bool {
        self.split_tokens_at.is_some()
    }

    fn process_decoded(
        &self,
        requested_split: Option<Option<Label>>,
        tokens: Vec<TokenCode>,
    ) -> Vec<Vec<TokenCode>> {
        if let Some(token) = requested_split {
            let mut copy_tokens = SplitTokens::new(move |tok| tok == token);
            unsafe {
                let tokens_ref =
                    core::mem::transmute::<&[TokenCode], &'static [TokenCode]>(tokens.as_ref());
                process_tokens(&mut SliceTokens::new(tokens_ref), &mut copy_tokens);
            }
            copy_tokens.into()
        } else {
            vec![tokens]
        }
    }

    pub fn process(
        &self,
        known_tokens: &impl IdentTable,
        tokens: Vec<TokenCode>,
    ) -> Vec<Vec<TokenCode>> {
        if let Some(str) = self.split_tokens_at.as_ref() {
            println!("Attempting to split tokens at: {:?}", str);
        } else {
            println!("The stream of tokens will be processed in a single batch");
        }

        let requested_split = self.split_tokens_at.as_deref().map(|tok| known_tokens.lookup_label(tok));
        self.process_decoded(requested_split, tokens)
    }

    pub fn process_split(
        &self,
        known_tokens: &SplitIdentTable,
        tokens: Vec<TokenCode>,
    ) -> Vec<Vec<TokenCode>> {
        if let Some(str) = self.split_tokens_at.as_ref() {
            println!("Attempting to split tokens at: {:?}", str);
        } else {
            println!("The stream of tokens will be processed in a single batch");
        }

        let requested_split = self.split_tokens_at.as_deref().map(|tok| known_tokens.lookup_label(tok));
        self.process_decoded(requested_split, tokens)
    }
}

#[derive(Args, Default)]
pub struct MainTheoremArgs {
    /// Name of the proposition in the file whose verification to certify
    pub main_theorem: Option<String>,

    /// Infer `main_theorem` as the last proposition in the file
    #[arg(long = "infer-main-theorem", conflicts_with = "main_theorem")]
    pub infer_main_theorem: bool,
}

impl MainTheoremArgs {
    pub fn from_main_theorem(main_theorem: &str) -> Self {
        Self {
            main_theorem: Some(main_theorem.to_string()),
            infer_main_theorem: false,
        }
    }
    pub fn infer_main_theorem() -> Self {
        Self {
            main_theorem: None,
            infer_main_theorem: true,
        }
    }

    /// Yields target_theorem based on command line options
    fn process_decoded(
        &self,
        requested_code: Option<Option<TokenCode>>,
        last_prop: Option<TokenCode>,
    ) -> Option<TokenCode> {
        println!("Serializing target theorem");
        if self.infer_main_theorem && last_prop.is_none() {
            println!("No theorem present in the file.");
        }
        if let Some(main_theorem_code) = requested_code {
            Some(
                main_theorem_code
                    .expect("Theorem to be certified not found in the file.")
            )
        } else if self.infer_main_theorem {
            last_prop
        } else {
            None
        }
    }

    pub fn process(
        &self,
        ident_table: &impl IdentTable,
        last_prop: Option<TokenCode>,
    ) -> Option<TokenCode> {
        let requested_code: Option<Option<TokenCode>> =
            self.main_theorem.as_deref().map(|tok| ident_table.lookup_label(tok));
        self.process_decoded(requested_code, last_prop)
    }

    pub fn process_split(
        &self,
        split_ident_table: &SplitIdentTable,
        last_prop: Option<TokenCode>,
    ) -> Option<TokenCode> {
        let requested_code: Option<Option<TokenCode>> =
            self.main_theorem.as_deref().map(|tok| split_ident_table.lookup_label(tok));
        self.process_decoded(requested_code, last_prop)
    }

    pub fn display_target_stmt(
        target_theorem: Option<TokenCode>,
        output: Result<Vec<TokenCode>, Box<dyn Error>>,
        ident_table: &impl mmtokens::IdentTable,
    ) {
        if target_theorem.is_some() {
            let output = output.expect("failed to deserialize output");
            println!("Target theorem: {}", show_symbol_tokens(ident_table, &output));
        }
    }

    pub fn display_target_stmt_split(
        target_theorem: Option<TokenCode>,
        output: Result<Vec<TokenCode>, Box<dyn Error>>,
        split_ident_table: &SplitIdentTable,
    ) {
        if target_theorem.is_some() {
            let output = output.expect("failed to deserialize output");
            println!("Target theorem: {}", show_stmt_split(split_ident_table, &output));
        }
    }
}

pub fn process_tokens<'a, P: TokenProcessor<'a> + ?Sized>(
    tokens: &mut impl Tokens<'a>,
    proc: &mut P,
) -> bool {
    let mut label: Option<Label> = None;
    let mut tok: Option<Token>;
    // Loop through the tokens, reading in the next at the end of each iteration
    // begin_label is assigned to None once the label is found
    // to denote checking should begin.
    loop {
        tok = tokens.read();
        match tok {
            Some(DelimCloseBlock) => {
                proc.pop_frame();
            }
            // If we encounter a block, recursively call read to read the block
            Some(DelimOpenBlock) => {
                proc.new_frame();
            }
            // If we encounter $c, add the constant to the current frame
            Some(DelimC) => {
                proc.handle_c(tokens.read_statement());
            }
            // If we encounter $v, add the variable to the current frame
            Some(DelimV) => {
                proc.handle_v(tokens.read_statement());
            }
            // If we encounter $f, add the variable-type hypothesis to the current frame
            Some(DelimF) => {
                proc.handle_f(label, tokens.read_statement());
                label = None;
            }
            // If we encounter $a, add the axiom to the current frame
            Some(DelimA) => {
                if !proc.handle_a(label, tokens.read_statement()) {
                    return false;
                }
                label = None;
            }
            // If we encounter $e, add the logical-type hypothesis to the current frame
            Some(DelimE) => {
                proc.handle_e(label, tokens.read_statement());
                label = None;
            }
            // If we encounter $p, add the provable assertion to the current frame
            // At the same time, we verify the assertion
            Some(DelimP) => {
                if !proc.handle_p(label, tokens.read_claim(), tokens.read_proof()) {
                    return false;
                }
                label = None;
            }
            // If we encounter a $d, add the disjoint-variable restriction to the current frame
            Some(DelimD) => {
                proc.handle_d(tokens.read_statement());
            }
            // If we encounter a label, set the label to the label we found
            Some(TokUser(x)) => {
                label = Some(x.into());
            }
            // We should never encounter a $. or $= delimiter, those are read elsewhere.
            Some(DelimEndStmt) | Some(DelimEndClaim) => {
                panic!("Unexpected $.")
            }
            None => break,
        }
    }
    true
}

/// Record how tokens are used, to support renumbering
/// Also gathers up `$c`, `$v`, and `$f` declarations
/// (and checks consistency of `$f` declarations), so
/// they can be reordered as expected.
#[derive(Default)]
pub struct TokenRenumberingRecorder {
    constants: Vec<Symbol>,
    variables: Vec<Symbol>,
    f_stmts: Vec<(Symbol,Symbol,Label)>, // (variable, type, label)
    lem_labels: Vec<Label>,
    hyp_labels: Vec<Label>,
    depth: u32,
    local_hyps: u32,
    max_hyps: u32,
}

impl TokenRenumberingRecorder {
    pub fn new() -> Self {
        Default::default()
    }

    pub fn report(&self) {
        println!(
            "{} variables, {} constants, {} f, {} lem, {} hyp",
            self.variables.len(),
            self.constants.len(),
            self.f_stmts.len(),
            self.lem_labels.len(),
            self.hyp_labels.len()
        );
        println!("Maximum of {} hypotheses", self.max_hyps);
        if self.variables.len() > 0 {
            let min_var = self.variables.iter().min().unwrap().token_code();
            let max_var = self.variables.iter().max().unwrap().token_code();
            println!(
                "Least var {}, greatest {}, span {}",
                min_var,
                max_var,
                max_var - min_var + 1
            );
        }
    }

    pub fn renumbering(&self) -> Renumbering {
        let mut next_sym = VAR_BASE;
        let mut symbol_map = BTreeMap::<Symbol, Symbol>::new();
        symbol_map.insert(OPEN_PAREN_SYM, OPEN_PAREN_SYM);
        symbol_map.insert(CLOSE_PAREN_SYM, CLOSE_PAREN_SYM);
        // put variable declarations in the same order as the $f declarations
        assert_eq!(self.f_stmts.len(), self.variables.len());
        for (v,_,_) in &self.f_stmts {
            symbol_map.insert(*v, next_sym.try_into().unwrap());
            next_sym += 1;
        }
        assert_eq!(next_sym, VAR_BASE + (self.variables.len() as VarIdx));
        assert!(next_sym <= SYM_BASE);
        next_sym = SYM_BASE;
        for c in &self.constants {
            if c.token_code() == OPEN_PAREN || c.token_code() == CLOSE_PAREN {
                continue;
            }
            symbol_map.insert(*c, next_sym.try_into().unwrap());
            next_sym += 1;
        }
        let mut label_map = BTreeMap::<Label, Label>::new();
        // Give $f declarations a label code derived from the variable's symbol code.
        for (var, _ty, label) in &self.f_stmts {
            let replacement: Label = symbol_map.get(var).unwrap().token_code();
            label_map.insert(*label, replacement);
        }
        let mut next_label = CLOSE_PAREN + 1 + (self.variables.len() as VarIdx);
        // then $a/$p declarations get sequential labels
        for l in &self.lem_labels {
            label_map.insert(*l, next_label);
            next_label += 1;
        }
        // finally hypotheses, which could maybe get local/reused names
        for l in &self.hyp_labels {
            label_map.insert(*l, next_label);
            next_label += 1;
        }
        Renumbering::from_maps(label_map, symbol_map)
    }
}

impl TokenProcessor<'_> for TokenRenumberingRecorder {
    fn new_frame(&mut self) {
        assert!(self.depth < 1);
        self.depth += 1;
    }

    fn pop_frame(&mut self) {
        assert!(self.depth > 0);
        if self.depth == 1 {
            self.max_hyps = self.max_hyps.max(self.local_hyps);
            self.local_hyps = 0;
        }
        self.depth -= 1;
    }

    fn handle_c(&mut self, stat: &stmt) {
        for tok in stat {
            assert!(tok.token_code() >= OPEN_PAREN);
        }
        self.constants.extend_from_slice(stat);
    }

    fn handle_v(&mut self, stat: &stmt) {
        for tok in stat {
            assert!(tok.token_code() > CLOSE_PAREN);
        }
        self.variables.extend_from_slice(stat);
    }

    fn handle_f(&mut self, label: Option<Label>, stat: &stmt) {
        assert!(self.depth == 0, "$f statement found within block");
        assert!(stat.len() == 2);
        let label = label.unwrap();
        let ty = stat[0];
        let var = stat[1];
        assert!(self.f_stmts.iter().find(|(v,_,_)| *v == var).is_none(),
            "multiple $f statements for variable {}", var.token_code());
        self.f_stmts.push((var,ty,label));
    }

    fn handle_a(&mut self, label: Option<Label>, _stat: &stmt) -> bool {
        self.lem_labels.push(label.unwrap());
        true
    }

    fn handle_e(&mut self, label: Option<Label>, _stat: &stmt) {
        assert!(self.depth == 1);
        self.hyp_labels.push(label.unwrap());
        self.local_hyps += 1;
    }

    fn handle_p(&mut self, label: Option<Label>, _claim: &stmt, _proof: Proof) -> bool {
        self.lem_labels.push(label.unwrap());
        true
    }

    fn handle_d(&mut self, _stat: &stmt) {}
}

pub struct Renumbering {
    label_map: BTreeMap<Label, Label>,
    symbol_map: BTreeMap<Symbol, Symbol>,
}

impl Renumbering {
    pub fn from_maps(
        label_map: BTreeMap<Label, Label>,
        symbol_map: BTreeMap<Symbol, Symbol>,
    ) -> Self {
        Renumbering { label_map, symbol_map }
    }

    pub fn map_sym(&self, sym: Symbol) -> Symbol {
        *self.symbol_map.get(&sym).unwrap()
    }
    pub fn map_label(&self, label: Label) -> Label {
        *self.label_map.get(&label).unwrap()
    }
}

/// A [TokenProcessor] for transforming a file according to
/// the data gathered by a [TokenRenumberingRecorder].
/// Will only produce sensible results when applied to
/// the same token stream!
pub struct RenumberTokens {
    renumbering: Renumbering,
    copy: CopyTokens,
    stmt_buf: Vec<Symbol>,
    proof_buf: Vec<TokenCode>,
}

impl Into<Vec<TokenCode>> for RenumberTokens {
    fn into(self) -> Vec<TokenCode> {
        self.copy.0
    }
}

impl RenumberTokens {
    /// Creates a `RenumberTokens` applying the given [Renumbering] and also
    /// constructs the initial prefix of `$c`, `$v`, and `$f` delarations
    pub fn from(mut constants: Vec<Symbol>, f_stmts: Vec<(Symbol,Symbol,Label)>, renumbering: Renumbering) -> Self {
        let mut copy = CopyTokens::new();
        constants.iter_mut().for_each(|c: &mut Symbol| {*c = renumbering.map_sym(*c)});
        copy.handle_c(&constants);
        let renamed_variables: Vec<Symbol> = f_stmts.iter().map(|(v,_,_)| renumbering.map_sym(*v)).collect();
        copy.handle_v(&renamed_variables);
        for (v,ty, label) in f_stmts {
            let ren_label = renumbering.map_label(label);
            let ren_ty = renumbering.map_sym(ty);
            let ren_var = renumbering.map_sym(v);
            copy.handle_f(Some(ren_label), &[ren_ty, ren_var]);
        }
        RenumberTokens {
            renumbering,
            copy,
            stmt_buf: Vec::new(),
            proof_buf: Vec::new(),
        }
    }

    fn map_stmt(&mut self, stat: &stmt) {
        self.stmt_buf.clear();
        self.stmt_buf.reserve(stat.len());
        for sym in stat {
            self.stmt_buf.push(self.renumbering.map_sym(*sym))
        }
    }

    fn map_proof(&mut self, proof: Proof) {
        self.proof_buf.clear();
        if proof[0] == OPEN_PAREN {
            self.proof_buf.push(OPEN_PAREN);
            // translate the labels
            let mut p = proof.into_iter();
            p.next(); // skip the open paren.
            while let Some(l) = p.next() {
                if *l == CLOSE_PAREN {
                    break;
                }
                self.proof_buf.push(self.renumbering.map_label(*l))
            }
            self.proof_buf.push(CLOSE_PAREN);
            // leave indices unchanged
            self.proof_buf.extend(p.as_slice());
        } else {
            for l in proof {
                self.proof_buf.push(self.renumbering.map_label(*l))
            }
        }
    }

    fn map_opt_label(&self, label: Option<Label>) -> Option<Label> {
        label.map(|l| self.renumbering.map_label(l))
    }
}

impl TokenProcessor<'_> for RenumberTokens {
    fn new_frame(&mut self) {
        self.copy.new_frame()
    }

    fn pop_frame(&mut self) {
        self.copy.pop_frame()
    }

    /// Does nothing, because a comprehensive `$c` statement was generated
    /// in [RenumberTokens::from].
    fn handle_c(&mut self, _stat: &stmt) {
    }

    /// Does nothing, because a comprehensive `$v` statement was generated
    /// in [RenumberTokens::from]
    fn handle_v(&mut self, _stat: &stmt) {
    }

    /// Does nothing, because all `$f` statements were generated
    /// (in the expected order) in [RenumberTokens::from]
    fn handle_f(&mut self, _label: Option<Label>, _stat: &stmt) {
    }

    fn handle_a(&mut self, label: Option<Label>, stat: &stmt) -> bool {
        self.map_stmt(stat);
        self.copy
            .handle_a(self.map_opt_label(label), &self.stmt_buf)
    }

    fn handle_e(&mut self, label: Option<Label>, stat: &stmt) {
        self.map_stmt(stat);
        self.copy
            .handle_e(self.map_opt_label(label), &self.stmt_buf)
    }

    fn handle_p(&mut self, label: Option<Label>, claim: &stmt, proof: Proof) -> bool {
        self.map_stmt(claim);
        self.map_proof(proof);
        self.copy
            .handle_p(self.map_opt_label(label), &self.stmt_buf, &self.proof_buf)
    }

    fn handle_d(&mut self, stat: &stmt) {
        self.map_stmt(stat);
        self.copy.handle_d(&self.stmt_buf)
    }
}

/// Check the structural conditions we want to rely on.
/// 1. No nested blocks
/// 2. $f declarations only at the top level
/// 3. $e only in blocks
pub struct StrictCheck {
    depth: u32,
}

impl StrictCheck {
    pub fn new() -> Self {
        StrictCheck {
            depth: 0,
        }
    }
}

impl TokenProcessor<'_> for StrictCheck {
    fn new_frame(&mut self) {
        assert!(self.depth < 1, "nested blocks");
        self.depth += 1;
    }

    fn pop_frame(&mut self) {
        assert!(self.depth > 0, "$}} outside block");
        self.depth -= 1;
    }

    fn handle_c(&mut self, _stat: &stmt) {
        assert!(self.depth == 0, "$c not at top level");
    }

    fn handle_v(&mut self, _stat: &stmt) {
        assert!(self.depth == 0, "$v not at top level");
    }

    fn handle_f(&mut self, _label: Option<Label>, stat: &stmt) {
        assert!(self.depth == 0, "$f within block");
        assert!(stat.len() == 2);
    }

    fn handle_a(&mut self, _label: Option<Label>, _stat: &stmt) -> bool {
        true
    }

    fn handle_e(&mut self, _label: Option<Label>, _stat: &stmt) {
        assert!(self.depth == 1, "$e outside block");
    }

    fn handle_p(&mut self, _label: Option<Label>, _claim: &stmt, _proof: Proof) -> bool {
        true
    }

    fn handle_d(&mut self, _stat: &stmt) {
    }
}

/// A token code assignment with separate mappings for symbols and labels.
/// Both mappings include the fixed "keywords"
pub struct SplitIdentTable {
    symbol_names: VecMap<String>,
    symbol_codes: BTreeMap<String, TokenCode>,
    label_names: VecMap<String>,
    label_codes: BTreeMap<String, Label>,
}

impl SplitIdentTable {
    pub fn by_renumbering(ident_table: &SimpleIdentTable, renumbering: &Renumbering) -> Self {
        let mut symbol_names = VecMap::new();
        let mut symbol_codes = BTreeMap::new();
        for (src, tgt) in &renumbering.symbol_map {
            let text = ident_table.get(src.token_code()).unwrap().to_owned();
            symbol_names.insert(tgt.token_code(), text.clone());
            symbol_codes.insert(text, tgt.token_code());
        }
        let mut label_names = VecMap::new();
        let mut label_codes = BTreeMap::new();
        for (src, tgt) in &renumbering.label_map {
            let name = ident_table.get(*src).unwrap().to_owned();
            label_names.insert(*tgt, name.clone());
            label_codes.insert(name, *tgt);
        }
        SplitIdentTable { symbol_names, symbol_codes, label_names, label_codes }
    }

    pub fn symbol_to_text(&self, sym: Symbol) -> &str {
        self.symbol_names.get(sym.token_code()).unwrap()
    }
    pub fn lookup_label<L: std::borrow::Borrow<str>>(&self, label: L) -> Option<Label> {
        self.label_codes.get(label.borrow()).copied()
    }
    pub fn label_to_text(&self, label: Label) -> Option<&str> {
        self.label_names.get(label).map(String::as_str)
    }
}

impl IdentTable for SplitIdentTable {
    fn get_symbol(&self, token: TokenCode) -> Option<&str> {
        self.symbol_names.get(token).map(Deref::deref)
    }

    fn lookup_symbol(&self, tok: impl std::borrow::Borrow<str>) -> Option<TokenCode> {
        self.symbol_codes.get(tok.borrow()).copied()
    }

    fn get_label(&self, token: TokenCode) -> Option<&str> {
        self.label_names.get(token).map(Deref::deref)
    }

    fn lookup_label(&self, label: impl std::borrow::Borrow<str>) -> Option<TokenCode> {
        self.label_codes.get(label.borrow()).copied()
    }
}

/// Show a list of symbol codes
pub fn show_stmt_split(idents: &SplitIdentTable, tokens: &[TokenCode]) -> String {
    let mut tokens = cast_tokens(tokens).into_iter().copied();
    let mut out = String::new();
    if let Some(first) = tokens.next() {
        out.push_str(idents.symbol_to_text(first));
    } else {
        return out;
    }
    for t in tokens {
        out.push(' ');
        out.push_str(idents.symbol_to_text(t));
    }
    out
}

pub fn renumber(
    ident_table: &SimpleIdentTable,
    tokens: &[TokenCode],
) -> (SplitIdentTable, Vec<TokenCode>) {
    StrictCheck::new().process_tokens(tokens);
    let mut stats = TokenRenumberingRecorder::new();
    stats.process_tokens(tokens);
    stats.report();
    let renumbering = stats.renumbering();
    let ident_map = SplitIdentTable::by_renumbering(ident_table, &renumbering);
    let mut renumbered = RenumberTokens::from(stats.constants,stats.f_stmts, renumbering);
    renumbered.process_tokens(tokens);
    (ident_map, renumbered.into())
}

/// This function checks a metamath file for includes. If an include is found, the function panics.
fn check_file_for_includes(filename: &str) {
    let axiom_file = fs::File::open(filename.to_string().clone()).expect("Failed to find file");

    let axiom_file_lines: Vec<String> = BufReader::new(axiom_file)
        .lines()
        .map(|l| l.expect("Could not parse line"))
        .collect();

    for line in axiom_file_lines {
        if line.starts_with("$[") {
            println!("Found include: {}", line);
            panic!("Includes are not supported in metamath files")
        }
    }
}

pub fn bytes_to_tokenized(bytes: Vec<u8>) -> (SimpleIdentTable, Vec<TokenCode>) {
    let mut i = 0usize;
    let mut v;
    let read_token = |i: usize| -> (TokenCode, usize) {
        let mut ni = i;
        let mut val: TokenCode = bytes[ni] as TokenCode;
        ni += 1;
        if val > 0x7F {
            val &= 0x7F;
            val += (bytes[ni] as TokenCode) << 7;
            ni += 1;
        }
        (val, ni)
    };
    let mut table = SimpleIdentTable::new();
    let mut tokens: Vec<TokenCode> = Vec::new();
    (v, i) = read_token(i);
    let mut table_len = v;
    while table_len > 0 {
        (v, i) = read_token(i);
        let tok_size: usize = v as usize;
        let tok: String = std::str::from_utf8(&bytes[i..i + tok_size])
            .unwrap()
            .to_string();
        table.add_entry(tok);
        i += tok_size;
        table_len -= 1;
    }
    while i < bytes.len() {
        (v, i) = read_token(i);
        tokens.push(v);
    }
    (table, tokens)
}

/// Runs the checker directly to obtain hints
/// maximum substitution size and the last provable statement in the file
pub fn compute_hints(axiom_file_tokens: &Vec<TokenCode>) -> (u32, Option<Label>) {
    println!("Running the checker directly to obtain the hints.");
    let mut mm = MM::new(None, None, MMHints::default());
    // let tokens_len = tokens.len();
    let tokens_ref = axiom_file_tokens.clone().leak();
    let ok = mm.read(&mut SliceTokens::new(tokens_ref));
    if !ok {
        panic!("Proof failed. Will not attempt proof certification.")
    }
    (
        mm.mm_hints.subst_size.get_maximum().try_into().unwrap(),
        mm.mm_hints.last_prop,
    )
}

/// Tokenizes the input file / or reads tokens from binary format
pub fn read_mm_file(file_name: &str) -> (SimpleIdentTable, Vec<TokenCode>) {
    println!("\nMetamath file read: {}", file_name);
    let (ident_table, axiom_file_tokens);

    if file_name.ends_with(".mm") {
        check_file_for_includes(file_name);

        let axiom_file =
            fs::File::open(file_name.to_string().clone()).expect("Failed to find file");

        let axiom_file_lines: Vec<String> = BufReader::new(axiom_file)
            .lines()
            .map(|l| l.expect("Could not parse line"))
            .collect();

        println!("Metamath file read as (# of lines): {}", axiom_file_lines.len());

        // Tokenize the metamath file
        let mut axiom_file_string_tokens: Vec<String> = Vec::new();
        for line in axiom_file_lines {
            for token in line.split_whitespace().map(|x| x.into()) {
                axiom_file_string_tokens.push(token);
            }
        }

        println!("Serializing metamath file");

        axiom_file_string_tokens = strip_comments(axiom_file_string_tokens);
        (ident_table, axiom_file_tokens) = preparse(axiom_file_string_tokens);
    } else if file_name.ends_with(".mm.bin") {
        // Load the binary tokenized file
        (ident_table, axiom_file_tokens) = bytes_to_tokenized(fs::read(file_name).unwrap());
    } else {
        panic!("Metamath file extension must be *.mm or *.mm.bin");
    }
    // let serialized_file: Vec<u32> = to_vec(&axiom_file_tokens).unwrap();

    println!("Metamath file preparsed as (# of tokens): {}", axiom_file_tokens.len());
    (ident_table, axiom_file_tokens)
}
/// Read and preprocess the input file, from text or binary format
pub fn prepare_mm_file(file_name: &str) ->
    (SplitIdentTable, Vec<TokenCode>) {
    let (ident_table, axiom_file_tokens) = read_mm_file(file_name);

    StrictCheck::new().process_tokens(&axiom_file_tokens);

    renumber(&ident_table, &axiom_file_tokens)
}

mod private {
    use std::time::Instant;

    pub trait Timer {
        fn get_start_time(&self) -> Instant;
        fn get_name() -> String;
    }
}

pub trait Timer : private::Timer {
    fn start() -> Self;
    fn stop(&self) -> String {
        let duration = self.get_start_time().elapsed();
        format!("Time elapsed for {}: {:.2?}", Self::get_name(), duration)
    }
}

pub struct PreprocessingTimer {
    timer: Instant
}

impl private::Timer for PreprocessingTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "preprocessing".into()
    }
}

impl Timer for PreprocessingTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}

pub struct SetupTimer {
    timer: Instant
}

impl private::Timer for SetupTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "setup".into()
    }
}

impl Timer for SetupTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}

pub struct LoadGuestTimer {
    timer: Instant
}

impl private::Timer for LoadGuestTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "guest loading".into()
    }
}

impl Timer for LoadGuestTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}

pub struct ProveTimer {
    timer: Instant
}

impl private::Timer for ProveTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "proving".into()
    }
}

impl Timer for ProveTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}

pub struct VerifyTimer {
    timer: Instant
}

impl private::Timer for VerifyTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "receipt verification".into()
    }
}

impl Timer for VerifyTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}

pub struct TotalTimer {
    timer: Instant
}

impl private::Timer for TotalTimer {
    fn get_start_time(&self) -> Instant {
        self.timer
    }

    fn get_name() -> String {
        "total".into()
    }
}

impl Timer for TotalTimer {
    fn start() -> Self {
        Self { timer: Instant::now() }
    }
}


#[cfg(test)]
mod tests {
    use super::*;
    use clap::Parser;

    #[derive(Parser)]
    #[command(name = "test")]
    struct TestArgs {
        #[command(flatten)]
        a: ToAxiomArgs,
    }

    // Testing argument parsing
    #[test]
    fn test_to_axioms_omitted() {
        let args = TestArgs::parse_from(["test"]);
        assert!(args.a.provable_to_axiom.is_empty());
    }

    #[test]
    fn test_to_axioms_argumentless() {
        let args = TestArgs::parse_from(["test", "--to-axiom"]);
        assert!(args.a.provable_to_axiom == ["#Pattern", "#Variable"]);
    }

    #[test]
    fn test_to_axioms_arguments() {
        let args = TestArgs::parse_from(["test", "--to-axiom", "A", "B"]);
        assert!(args.a.provable_to_axiom == ["A", "B"]);
    }

    #[test]
    fn test_to_axioms_multiple1() {
        let args = TestArgs::parse_from(["test", "--to-axiom", "A", "--to-axiom", "B"]);
        assert!(args.a.provable_to_axiom == ["A", "B"]);
    }

    #[test]
    fn test_to_axioms_multiple_with_argumentless() {
        let args = TestArgs::parse_from(["test", "--to-axiom", "--to-axiom", "B"]);
        assert!(args.a.provable_to_axiom == ["#Pattern", "#Variable", "B"]);
    }
}
