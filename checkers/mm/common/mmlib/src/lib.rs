#![cfg_attr(not(feature="gen_hints"), no_std)]

extern crate alloc;

use crate::alloc::borrow::ToOwned;
use alloc::collections::{BTreeMap, BTreeSet, VecDeque};
use alloc::rc::Rc;
use alloc::vec;
use alloc::vec::Vec;

extern crate core;
use core::borrow::Borrow;
use core::cmp::{max, min};
use core::ops::{Deref,Index};

use mmtokens::{cast_tokens, check_sym_to_var_ix, classify, codes, is_var_symbol, try_sym_to_var_ix, Symbol, Token, TokenCode};
use Token::*;

mod vecmap;
pub use vecmap::VecMap;

/// A &stmt is a reference to statement content.
#[allow(non_camel_case_types)]
pub type stmt = [Symbol];
/// An InputStatement is a statement that exists in the input file and
/// can be a static slice of the input.
/// In particular the conclusion and hypotheses of every lemma can
/// be InputStatement.
pub type InputStatement = &'static stmt;

// This should work but doesn't
// #[cfg(all(feature = "no_hints", feature = "gen_hints"))]
// compile_error!("feature \"no_hints\" and feature \"gen_hints\" cannot be enabled at the same time");

#[cfg(feature = "no_hints")]
mod no_hints {
    use crate::{Borrow, Index, InputStatement, MMSliceTrait, Rc, Symbol, Vec, stmt};
    use core::slice::SliceIndex;
    pub type GeneratedStatement = Rc<[Symbol]>;

    /// A MixedStatement can be an InputStatement or a dynamically allocated
    /// statement. This is needed on the proof stack for proof checking,
    /// because applying lemmas can produce statements that don't explicitly
    /// appear in the input file.
    #[derive(Debug)]
    pub enum MixedStatement {
        Input(InputStatement),
        Generated(GeneratedStatement),
    }

    impl MixedStatement {
        pub fn input(stmt: InputStatement) -> MixedStatement {
            MixedStatement::Input(stmt)
        }
        pub fn generated(stmt: GeneratedStatement) -> MixedStatement {
            MixedStatement::Generated(stmt)
        }
        #[cfg(feature = "perf")]
        pub fn len(&self) -> usize {
            use MixedStatement::*;
            match self {
                Input(input_stmt) => input_stmt.len(),
                Generated(rc_stmt) => rc_stmt.len(),
            }
        }
        pub fn as_slice(&self) -> &[Symbol] {
            use MixedStatement::*;
            match self {
                Input(input_stmt) => input_stmt,
                Generated(rc_stmt) => rc_stmt,
            }
        }
    }

    impl Clone for MixedStatement {
        fn clone(&self) -> Self {
            use MixedStatement::*;
            match self {
                Input(input_stmt) => Input(input_stmt),
                Generated(rc_stmt) => Generated(rc_stmt.clone()),
            }
        }
    }

    impl<I:SliceIndex<[Symbol]>> Index<I> for MixedStatement {
        type Output = I::Output;

        fn index(&self, index: I) -> &Self::Output {
            use MixedStatement::*;
            match self {
                Input(input_stmt) => input_stmt.index(index),
                Generated(rc_stmt) => rc_stmt.index(index)
            }
        }
    }

    impl Borrow<stmt> for MixedStatement {
        fn borrow(&self) -> &stmt {
            use MixedStatement::*;
            match self {
                Input(input_stmt) => input_stmt,
                Generated(rc_stmt) => &rc_stmt
            }
        }
    }

    /// The no-hints version of the slice structure simply consists of a vector which
    /// will be yielded completely to the caller at the end of the call
    pub struct MMSlice {
        slice: Vec<Symbol>,
    }

    impl MMSlice {
        pub fn new() -> MMSlice {
            MMSlice { slice: Vec::new() }
        }
        pub fn len(&self) -> usize {
            self.slice.len()
        }
    }

    impl MMSliceTrait for MMSlice {
        fn extend(&mut self, slice: &[Symbol]) {
            self.slice.extend_from_slice(slice);
        }

        fn push(&mut self, s: &Symbol) {
            self.slice.push(s.clone());
        }

        fn as_slice(&mut self) -> GeneratedStatement {
            self.slice.as_slice().into()
        }

        fn clear(&mut self) {
            self.slice.clear();
        }
    }
}

#[cfg(feature = "use_hints")]
mod use_hints {
    use crate::{Borrow, InputStatement, MMSliceTrait, Symbol, stmt, vec};
    pub type GeneratedStatement = &'static [Symbol];

    #[repr(transparent)]
    #[derive(Debug)]
    pub struct MixedStatement(InputStatement);

    impl MixedStatement {
        pub fn input(stmt: InputStatement) -> MixedStatement {
            MixedStatement(stmt)
        }
        pub fn generated(stmt: GeneratedStatement) -> MixedStatement {
            MixedStatement(stmt)
        }
        pub fn as_slice(&self) -> &[Symbol] {
            match self {
                Self(stmt) => stmt,
            }
        }
    }

    impl Clone for MixedStatement {
        fn clone(&self) -> Self {
            Self(self.0)
        }
    }

    impl Borrow<stmt> for MixedStatement {
        fn borrow(&self) -> &stmt {
            match self {
                Self(stmt) => stmt,
            }
        }
    }

    /// The use-hints version of the slice structure consists of a prealocated slice
    /// together with a marker telling how much of the slice has been used so far
    #[derive(Debug)]
    pub struct MMSlice<'a> {
        slice: &'a mut [Symbol],
        slice_start: usize,
        slice_end: usize,
    }

    impl<'a> MMSlice<'a> {
        /// Pre-allocates a slice of the maximum length provided
        pub fn new(len: usize) -> MMSlice<'a> {
            let subst_vec = vec![Symbol::default(); len];
            MMSlice { slice: subst_vec.leak(), slice_start: 0, slice_end: 0 }
        }
    }

    impl MMSliceTrait for MMSlice<'static> {
        fn extend(&mut self, slice: &[Symbol]) {
            let new_len = self.slice_end + slice.len();
            self.slice[self.slice_end..new_len].clone_from_slice(slice);
            self.slice_end = new_len;
        }

        fn push(&mut self, s: &Symbol) {
            self.slice[self.slice_end] = s.clone();
            self.slice_end += 1;
        }

        fn as_slice(&mut self) -> GeneratedStatement {
            let slice: &'static [Symbol] = unsafe { core::slice::from_raw_parts(self.slice.as_ptr(), self.slice_end) };
            let start = self.slice_start;
            self.slice_start = self.slice_end;
            &slice[start..self.slice_end]
        }

        fn clear(&mut self) {
            self.slice_start = 0;
            self.slice_end = 0;
        }
    }
}


#[cfg(feature = "no_hints")]
use no_hints::*;

#[cfg(feature = "use_hints")]
use use_hints::*;

pub type Proof<'a> = &'a [TokenCode]; //Proofs do not need to be retained after checking
pub type Label = TokenCode;

pub trait Tokens<'a> {
    fn read(&mut self) -> Option<Token>;
    /// Read a statement, consuming and discarding a trailing $. delimiter
    fn read_statement(&mut self) -> &'a stmt;
    /// Read a proof claim, consuming and discarding a trailing $= delimiter
    fn read_claim(&mut self) -> &'a stmt;
    /// Read a proof body, consuming and discarding the $.
    fn read_proof(&mut self) -> Proof<'a>;
}

#[derive(Debug)]
pub struct SliceTokens<'input> {
    tokens: core::slice::Iter<'input, TokenCode>,
}

impl<'input> SliceTokens<'input> {
    pub fn new(tokens: &'input [TokenCode]) -> Self {
        SliceTokens { tokens: tokens.iter(), }
    }
}

impl<'input> Tokens<'input> for SliceTokens<'input> {
    /// Reads a token. If there are no tokens in the token buffer initially, moves lines to the token buffer until there is.
    fn read(&mut self) -> Option<Token> {
        self.tokens.next().copied().map(classify)
    }
    fn read_statement(&mut self) -> &'input stmt {
        let slice: &'input [TokenCode] = self.tokens.as_slice();
        if let Some(stmt_len) = self.tokens.position(|t| *t == codes:: END_STMT) {
            cast_tokens(slice.index(..stmt_len))
        } else {
            panic!("No end statement delimiter");
        }
    }
    fn read_claim(&mut self) -> &'input stmt {
        let slice: &'input [TokenCode] = self.tokens.as_slice();
        if let Some(stmt_len) = self.tokens.position(|t| *t == codes:: END_CLAIM) {
            cast_tokens(slice.index(..stmt_len))
        } else {
            panic!("No end statement delimiter");
        }
    }
    fn read_proof(&mut self) -> Proof<'input> {
        let slice: &'input [TokenCode] = self.tokens.as_slice();
        if let Some(stmt_len) = self.tokens.position(|t| *t == codes:: END_STMT) {
            slice.index(..stmt_len)
        } else {
            panic!("No end statement delimiter");
        }
    }
}

#[derive(Default, Debug)]
pub struct Frame {
    /// Set of constants in the frame
    c: BTreeSet<Symbol>,
    /// Set of variables in the frame
    v: BTreeSet<Symbol>,
    /// Set of disjoint-variable restrictions in the frame
    d: BTreeSet<(Symbol, Symbol)>, //maybe switch this give c and v different types
    /// Set of variable-type hypotheses in the frame
    f: Vec<(Symbol, Symbol)>,
    /// Map of variable-type hypotheses to their labels in the frame
    f_labels: BTreeMap<Symbol, Label>,
    /// Set of logical-type hypotheses in the frame
    e: Vec<InputStatement>,
    /// List of labels of logical-type hypotheses in the frame
    e_labels: Vec<Label>,
}

#[allow(dead_code)]
#[derive(Debug)]
struct OldFrameStack {
    pub list: Vec<Frame>,
}

impl Default for OldFrameStack {
    fn default() -> Self {
        Self { list: vec![Frame::default()] }
    }
}

/// `FrameStack` records context information about all
/// currently-open blocks in the metamath file, and
/// can build [Assertion]s from statements using that
/// information.
///
/// Because of our extra structural restrictions over
/// metamath files, `$f` declarations do not need to
/// support nested scopes.
///
/// To avoid memory allocation, data on `$e` hypotheses
/// is kept in flat vectors [e_hyps] and [e_labels],
/// with the division into blocks recorded in [e_counts].
/// 
/// This structure also relies on some connections between
/// declaration order and token numbers.
/// Critically, we require `$f` declarations to appear
/// in increasing order of the variable's code, and to have
/// label codes numerically equal to the variable code,
/// so we can produce a correctly-sorted list of which `$f`
/// hypotheses an assertion depends on simply by sorting
/// the set of free variables.
#[derive(Debug)]
pub struct FrameStack {
    /// Depth of block nesting. 0 for outermost scope, following metamath.pdf
    depth: u32,
    /// Known constant symbols
    c: Vec<Symbol>,
    /// Known variables
    v: VarMap<()>, // this should reduce to a counter with ZST optimizations
    /// Next unused variable code, used to enforce declaration order.
    next_v: TokenCode,
    /// Type-symbols for variables which have had an `$f` declaration
    f: VarMap<Symbol>,
    /// Next expected `$f` declaration, used to enforce expected order.
    next_f: TokenCode,
    /// Records `$d` declarations. First entry is for the outermost scope.
    /// Note that creating an empty [BTreeSet] does not allocate,
    /// so blocks without `$d` declarations will not allocate.
    d: Vec<BTreeMap<Symbol,BTreeSet<Symbol>>>,
    /// Number of `$e` statements visible in each block around the current block.
    /// Used to truncate [e_hyps] and [e_labels] when leaving nested blocks.
    /// Has length equal to the [depth] value.
    e_counts: Vec<u32>,
    /// active `$e` hypothesis statements.
    e_hyps: Vec<InputStatement>,
    /// active `$e` hypothesis labels
    e_labels: Vec<Label>,
    /// A buffer reused to reduce memory allocation when
    /// computing the "mandatory variables" of assertions.
    mand_var_buf: Vec<Symbol>,
}

impl Default for FrameStack {
    fn default() -> Self {
        let mut d = Vec::with_capacity(2);
        d.push(BTreeMap::new());
        FrameStack {
            depth: 0,
            c: Vec::new(),
            v: VarMap::new(),
            next_v: codes::VAR_BASE,
            f: VarMap::new(),
            next_f: codes::VAR_BASE,
            d,
            e_counts: Vec::new(),
            e_hyps: Vec::new(),
            e_labels: Vec::new(),
            mand_var_buf: Vec::new(),
        }
    }
}

impl FrameStack {
    /// Open a new block
    pub fn push(&mut self) {
        self.depth += 1;
        self.e_counts.push(self.e_hyps.len() as u32);
        self.d.push(BTreeMap::new());
    }

    /// Current depth. 0 at outermost scope, following metamath.pdf
    pub fn depth(&self) -> u32 {
        self.depth
    }

    /// Exit a block
    pub fn pop(&mut self) {
        assert!(self.depth > 0);
        self.depth -= 1;
        let keep_e = self.e_counts.pop().unwrap();
        self.e_hyps.truncate(keep_e as usize);
        self.e_labels.truncate(keep_e as usize);
        self.d.pop();
    }

    /// Record a new constant symbol
    pub fn add_c(&mut self, c: Symbol) {
        if !self.c.contains(&c) { self.c.push(c) }
    }

    /// Record a new variable symbol.
    /// Enforces expected variable declaration order
    fn add_v(&mut self, v: Symbol) {
        assert!(self.next_v == v.token_code());
        self.next_v += 1;
        self.v.insert(v, ());
    }

    /// Add `$f` declaration.
    /// Enforces declaration order and label restrictions.
    fn add_f(&mut self, var: Symbol, kind: Symbol, label: Label) {
        assert!(self.depth == 0);
        assert!(label == var.token_code());
        assert!(label == self.next_f);
        self.f.insert(var, kind);
        self.next_f += 1;
    }

    /// Add `$e` hypothesis. Only allowed within a block.
    fn add_e(&mut self, stat: InputStatement, label: Label) {
        assert!(self.depth() > 0);
        self.e_hyps.push(stat);
        self.e_labels.push(label);
    }

    /// Check if a symbol is a known variable
    fn lookup_v(&self, x: &Symbol) -> bool {
        self.v.get(*x).is_some()
    }

    /// Add a `$d` statement.
    fn add_d(&mut self, stmt: InputStatement) {
        let set = self.d.last_mut().unwrap();
        for &x in stmt.iter() {
            for &y in stmt.iter() {
                if x != y {
                    let (x,y) = if y < x { (y,x) } else { (x,y) };
                    set.entry(x).or_default().insert(y);
                }
            }
        }
    }

    /// Check whether there is currently a disjoint-variable
    /// restriction between symbols `x` and `y`
    fn lookup_d(&self, x: Symbol, y: Symbol) -> bool {
        let (x,y) = if y < x { (y,x) } else { (x,y) };
        for d_block in self.d.iter() {
            if d_block.get(&x).is_some_and(|set| set.contains(&y)) {
                return true
            }
        }
        false
    }

    /// Check that a `$f` hypothesis exists for the given variable
    fn lookup_f(&self, v: Symbol) -> Label {
        // We require f hypothesis labels to match the variable code
        if !self.f.get(v).is_some() {
            if !self.lookup_v(&v) {
                panic!("lookup_f of unknown variable {}", v.token_code());
            } else {
                panic!("lookup_f for variable with no $f {}", v.token_code());
            }
        }
        v.token_code()
    }

    /// Helper method collecting the set of relevant
    /// distinct-variable restrictions for the given list of variables.
    /// Requires mand_vars is sorted
    fn gather_dvs(&self, mand_vars: &[Symbol]) -> BTreeSet<(Symbol, Symbol)> {
        let mut dvs: BTreeSet<(Symbol,Symbol)> = BTreeSet::new();
        for d_block in self.d.iter() {
            if d_block.is_empty() {
                continue;
            }
            let mut vars = mand_vars;
            while let Some((x, rest)) = vars.split_first() {
                vars = rest;
                if let Some(set) = d_block.get(x) {
                    for y in rest {
                        if set.contains(y) {
                            dvs.insert((*x,*y));
                        }
                    }
                }
            }
        }
        dvs
    }

    /// Construct an [Assertion] for the statement at the current point
    /// Also returns a list of labels of the `$e` hypotheses
    /// to support how it is used in [MM::get_labels].
    pub fn make_assertion_full(&mut self, stat: InputStatement) -> (Assertion, Vec<Label>) {
        //let _frame = self.list.last_mut().unwrap();

        // Get all the logical-type hypotheses from the frames
        let e_hyps: Vec<InputStatement> = self.e_hyps.clone();
        let e_labels: Vec<Label> = self.e_labels.clone();

        self.mand_var_buf.clear();
        for stmt in core::iter::once(stat).chain(e_hyps.iter().copied()) {
            for tok in stmt {
                if self.lookup_v(tok) && !self.mand_var_buf.contains(tok) {
                    self.mand_var_buf.push(*tok)
                }
            }
        }
        self.mand_var_buf.sort();
        // println!("mand_vars: {:?}", self.mand_var_buf);

        let mand_vars: &[Symbol] = &self.mand_var_buf;

        let dvs = self.gather_dvs(mand_vars);

        let mut f_hyps: Vec<(Symbol,Symbol)> = Vec::with_capacity(self.mand_var_buf.len());
        // the mandatory variable hypotheses are supposed to be listed in the order of
        // the $f declarations.
        // We assume they are in order.
        for &v in &self.mand_var_buf {
            f_hyps.push((self.f[v], v))
        }

        // println!("ma: \n dvs: {:?}, f: {:?}, e_hyps: {:?}, stat: {:?}", dvs, f_hyps, e_hyps, stat);

        (Assertion {
            dvs,
            f_hyps,
            e_hyps,
            stat,
        },
        e_labels
        )
    }

    fn make_assertion(&mut self, stat: InputStatement) -> Assertion {
        self.make_assertion_full(stat).0
    }
}

#[derive(Debug)]
pub struct Assertion {
    /// Set of disjoint-variable restrictions
    pub dvs: BTreeSet<(Symbol, Symbol)>,
    /// Vec of variable-type hypotheses, (Var, Tag)
    pub f_hyps: Vec<(Symbol, Symbol)>,
    /// Vec of logical-type hypotheses
    pub e_hyps: Vec<InputStatement>,
    /// The statement being asserted
    pub stat: InputStatement,
}

// Then update Assertion
impl Assertion {
    /*
    pub fn to_string(&self) -> String {
        let mut out = String::new();
        for lt in self.stat.deref() {
            out.push_str(lt.deref());
            out.push(' ');
        }
        out
    }
    */

    // // TODO: Do we need to put the other fields in the hash too?
    // pub fn hash(&self) -> Sha {
    //     let mut val = self.to_string().as_bytes().to_vec();
    //     let mut ret = *sha().hash_bytes(&val[..]);
    //     // let mut ret = Digest::from_bytes("Assertion".as_bytes());
    //     // for lt in self.stat.deref() {
    //     //     let token_hash = Digest::from_bytes(lt.deref().as_bytes());

    //     //     let ret_bytes: Vec<u8> = ret
    //     //         .as_slice()
    //     //         .iter()
    //     //         .map(|word| word.to_le_bytes())
    //     //         .flatten()
    //     //         .collect();
    //     //     let tok_bytes: Vec<u8> = token_hash
    //     //         .as_slice()
    //     //         .iter()
    //     //         .map(|word| word.to_le_bytes())
    //     //         .flatten()
    //     //         .collect();

    //     //     let mut buffer = [0u8; 2 * 32];
    //     //     buffer[..32].clone_from_slice(ret_bytes.as_slice());
    //     //     buffer[32..].clone_from_slice(tok_bytes.as_slice());

    //     //     ret = Digest::from_bytes(&buffer);
    //     // }

    //     ret
    // }
}

#[allow(dead_code)]
impl OldFrameStack {
    /// Pushes a new empty frame onto the frame stack.
    pub fn push(&mut self) {
        self.list.push(Frame::default());
    }

    /// Adds a constant to the current frame.
    pub fn add_c(&mut self, token: Symbol) {
        let frame = &mut self.list.last_mut().unwrap();

        if frame.c.contains(&token) {
            panic!("Const {:?} already defined", token)
        }
        if frame.v.contains(&token) {
            panic!("Const already defined as var in scope")
        }
        frame.c.insert(token);
    }

    /// Adds a variable to the current frame.
    pub fn add_v(&mut self, token: Symbol) {
        let frame = &mut self.list.last_mut().unwrap();

        if frame.c.contains(&token) {
            panic!("Variable already defined")
        }
        if frame.v.contains(&token) {
            panic!("Variable already defined as var in scope")
        }
        frame.v.insert(token);
    }

    /// Adds a $f (variable-type) hypothesis to the current frame.
    pub fn add_f(&mut self, var: Symbol, kind: Symbol, label: Label) {
        if !self.lookup_v(&var) {
            panic!("var not defined")
        }
        if !self.lookup_c(&kind) {
            panic!("const not defined")
        }

        let frame = self.list.last_mut().unwrap();
        if frame.f_labels.contains_key(&var) {
            panic!("f already defined in scope")
        }
        frame.f.push((var.clone(), kind));
        frame.f_labels.insert(var, label);
    }

    /// Adds a $e (logical) hypothesis to the current frame.
    pub fn add_e(&mut self, stat: InputStatement, label: Label) {
        let frame = self.list.last_mut().unwrap();

        frame.e.push(stat);
        frame.e_labels.push(label);
    }

    /// Adds a $d (disjoint-variable restriction) hypothesis to the current frame.
    /// This is a set of variables that are not allowed to be equal.
    /// We must add all pairs of variables to the frame.d set.
    pub fn add_d(&mut self, stat: InputStatement) {
        let frame = self.list.last_mut().unwrap();
        //let mut product_vec = vec!();
        for x in stat.iter() {
            for y in stat.iter() {
                if x != y {
                    frame
                        .d
                        .insert((min(x.clone(), y.clone()), max(x.clone(), y.clone())));
                }
            }
        }
    }

    /// Returns true if any frame in the stack contains the given constant.
    pub fn lookup_c(&self, token: &Symbol) -> bool {
        self.list.iter().rev().any(|fr| fr.c.contains(token))
    }

    /// Returns true if any frame in the stack contains the given variable.
    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn lookup_v(&self, token: &Symbol) -> bool {
        self.list.iter().rev().any(|fr| fr.v.contains(token))
    }

    /// Returns label of an $f (variable-type) hypothesis from the last frame that defines the given variable.
    pub fn lookup_f(&self, var: Symbol) -> Label {
        // println!("lookup {}", var);
        let f = self
            .list
            .iter()
            .rev()
            .find(|frame| frame.f_labels.contains_key(&var))
            .unwrap();

        f.f_labels[&var].clone()
    }

    /// Returns true if any frame in the stack contains the given disjoint-variable restriction.
    pub fn lookup_d(&self, x: Symbol, y: Symbol) -> bool {
        let pair = if y < x { (y, x) } else { (x, y) };
        self.list.iter().rev().any(|fr| fr.d.contains(&pair))
    }

    pub fn make_assertion_full(&self, stat: InputStatement) -> (Assertion, Vec<Label>) {
        //let _frame = self.list.last_mut().unwrap();

        // Get all the logical-type hypotheses from the frames
        let e_hyps: Vec<InputStatement> = self.list.iter().flat_map(|fr| fr.e.clone()).collect();
        let e_labels: Vec<Label> = self.list.iter().flat_map(|fr| fr.e_labels.clone()).collect();

        // Add on the statement itself
        let chained = e_hyps.iter().chain(core::iter::once(&stat)).copied();

        // Get all the mandatory variables among these
        let mand_vars = self.mand_vars(chained);

        let dvs = self.gather_dvs(&mand_vars);

        // Get all the variable-type hypotheses from the frames
        let f_hyps = self.get_f_hyps(mand_vars);
        // println!("ma: \n dvs: {:?}, f: {:?}, e_hyps: {:?}, stat: {:?}", dvs, f_hyps, e_hyps, stat);

        (Assertion {
            dvs,
            f_hyps: f_hyps.into(),
            e_hyps,
            stat,
        },
        e_labels
        )
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn get_f_hyps(&self, mut mand_vars: BTreeSet<Symbol>) -> VecDeque<(Symbol, Symbol)> {
        let mut f_hyps = VecDeque::new();
        self.list.iter().rev().for_each(|fr| {
            fr.f.iter().rev().for_each(|(v, k)| {
                if mand_vars.contains(v) {
                    f_hyps.push_front((k.clone(), v.clone()));
                    mand_vars.remove(v);
                }
            });
        });
        f_hyps
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn gather_dvs(&self, mand_vars: &BTreeSet<Symbol>) -> BTreeSet<(Symbol, Symbol)> {
        // Build the cartesian product of all pairs of mandatory variables
        let mut cartesian: BTreeSet<(Symbol, Symbol)> = BTreeSet::new();
        for x in mand_vars.iter() {
            for y in mand_vars.iter() {
                cartesian.insert((x.clone(), y.clone()));
            }
        }
        // Get all the disjoint-variable restrictions among mandatory variables
        let dvs: BTreeSet<(Symbol, Symbol)> = self
            .list
            .iter()
            .flat_map(|fr| fr.d.intersection(&cartesian))
            .cloned()
            .collect();
        dvs
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn mand_vars(&self, stmts: impl Iterator<Item=InputStatement>) -> BTreeSet<Symbol> {
        let mand_vars: BTreeSet<Symbol> = stmts
            .flat_map(|x| x.iter())
            .filter(|tok| is_var_symbol(**tok)
            )
            // && self.lookup_v(tok))
            .cloned()
            .collect();
        mand_vars
    }

    fn make_assertion(&self, stat: InputStatement) -> Assertion {
        self.make_assertion_full(stat).0
    }
}

// first one is label type,

#[derive(Debug)]
pub enum LabelEntry {
    /// LabelEntry for Axiom ($a) assertions
    DollarA(Assertion),
    /// LabelEntry for Provable ($p) assertions
    DollarP(Assertion),
    /// LabelEntry for logical-type ($e) statements
    DollarE(InputStatement),
    /// LabelEntry for Variable-type ($f) statements
    DollarF(InputStatement),
}

#[cfg(any(feature = "perf", feature = "gen_hints"))]
#[derive(Clone, Copy, Debug, Default)]
pub struct TrackMaximum {
    maximum: u64,
    current: u64,
}

#[cfg(any(feature = "perf", feature = "gen_hints"))]
impl TrackMaximum {
    #[cfg(feature = "perf")]
    fn update_maximum(&mut self, size: u64) {
        if self.maximum < size {
            self.maximum = size;
        }
    }
    fn add_to_current(&mut self, size: u64) {
        self.current += size;
        if self.maximum < self.current {
            self.maximum = self.current;
        }
    }
    fn reset_current(&mut self) {
       self.current = 0;
    }
    pub fn get_maximum(&self) -> u64 {
        self.maximum
    }
}

#[cfg(feature = "perf")]
pub trait DynamicPerfStatsViewer {
    /// Approximate proof work in a non-sharing implementation.
    /// This can be approximated as the total of the lengths of
    /// the statements popped and the conclusion pushed.
    /// Perhaps we should try to skip `$f` hypotheses, or
    /// account for checking disjoint variable restrictions.
    fn get_total_claim_size(&self) -> u64;
    /// Approximate proof work in a term-sharing implementation, by
    /// adding up the sizes of the applied lemma statements,
    /// with the idea that the non-variable parts of the hypotheses and
    /// conclusion are approximately how much pattern matching and
    /// term construction work would be done.
    ///
    /// This will just be reusing a pointer to a preconstructed
    /// term only for using an $e hypothesis of the current proof goal,
    /// an $f assumption from anywhere, recalling a claim with Z,
    /// or an $a/$p lemma with no variables at all.
    /// The last case is accounted for in [lemma_size].
    fn get_total_lemma_size(&self) -> u64;
    fn get_max_stack_depth(&self) -> u64;
    ///Maximum size (in tokens) of all statements on the proof stack
    fn get_max_stack_size(&self) -> u64;
    ///Maximum size (in tokens) of cumulated substitutions during a proof
    fn get_max_subst_size(&self) -> u64;
    fn get_dynamic_report(&self) -> alloc::string::String {
        alloc::format!("Proof stats: total lemma size: {}\n\
            Proof stats: total claim size: {}\n\
            Proof stats: max stack depth: {}\n\
            Proof stats: max stack size: {}\n\
            Proof stats: max cumulated subst size per proof: {}\n\
            ",
            self.get_total_lemma_size(),
            self.get_total_claim_size(),
            self.get_max_stack_depth(),
            self.get_max_stack_size(),
            self.get_max_subst_size(),
        )
    }
}

#[cfg(feature = "perf")]
pub trait StaticPerfStatsViewer {
    /// Number of propositions in the analyzed metamath file
    fn get_prop_count(&self) -> u64;
    /// Number of constants in the analyzed metamath file
    fn get_constant_count(&self) -> u64;
    /// Number of variables in the analyzed metamath file
    fn get_variable_count(&self) -> u64;
    /// Number of variable hypotheses in the analyzed metamath file
    fn get_f_hypothesis_count(&self) -> u64;
    /// Number of logical hypotheses in the analyzed metamath file
    fn get_e_hypothesis_count(&self) -> u64;
    /// Number of disjoint variable pairs in the analyzed metamath file
    fn get_disjoint_vars_count(&self) -> u64;
    /// Number of proof steps in the analyzed metamath file
    fn get_proof_steps_count(&self) -> u64;
    /// Label of the last checked proposition
    fn get_last_prop(&self) -> Option<Label>;
    fn get_static_report(&self) -> alloc::string::String {
        alloc::format!(
            "Proof stats: Propositions count: {}\n\
             Proof stats: Constants count: {}\n\
             Proof stats: Variables count: {}\n\
             Proof stats: Variable Hypotheses count: {}\n\
             Proof stats: Logical Hypotheses count: {}\n\
             Proof stats: Disjoint vars pairs count: {}\n\
             Proof stats: Proof steps count: {}\n\
            ",
            self.get_prop_count(),
            self.get_constant_count(),
            self.get_variable_count(),
            self.get_f_hypothesis_count(),
            self.get_e_hypothesis_count(),
            self.get_disjoint_vars_count(),
            self.get_proof_steps_count(),
        )
    }
}

#[cfg(feature = "perf")]
mod perfstat {
    use crate::DynamicPerfStatsViewer;
    use crate::InputStatement;
    use crate::StaticPerfStatsViewer;
    use crate::MixedStatement;

    pub(crate) trait DynamicPerfStatsCollect {
        fn count_stmt_size(&mut self, entry: &MixedStatement);
        fn count_assertion_size(&mut self, assertion: &Assertion);
        fn update_stack_depth(&mut self, size: u64);
        fn update_stack_size(&mut self, size: u64);
        fn update_max_subst_size(&mut self, size: u64);
        fn reset_current_subst_size(&mut self);
    }

    pub(crate) trait StaticPerfStatsCollect {
        fn count_prop(&mut self);
        fn count_constant(&mut self);
        fn count_variable(&mut self);
        fn count_f_hypotheses(&mut self, size: u64);
        fn count_e_hypotheses(&mut self, size: u64);
        fn count_disjoint_vars(&mut self, size: u64);
        fn count_proof_steps(&mut self, size: u64);
        fn set_last_prop(&mut self, prop: Option<crate::Label>);
    }

    #[derive(Debug, Default)]
    pub struct PerfStat {
        static_stats: StaticPerfStats,
        dynamic_stats: DynamicPerfStats,
    }

    #[derive(Debug, Default)]
    struct StaticPerfStats {
        prop_count: u64,
        constant_count: u64,
        variable_count: u64,
        f_hypothesis_count: u64,
        e_hypothesis_count: u64,
        disjoint_vars_count: u64,
        proof_steps_count: u64,
        last_prop: Option<crate::Label>,
    }

    #[derive(Debug, Default)]
    struct DynamicPerfStats {
        total_lemma_size: u64,
        total_claim_size: u64,
        max_stack_depth: crate::TrackMaximum,
        max_stack_size: crate::TrackMaximum,
        subst_size: crate::TrackMaximum,
    }
    impl Clone for DynamicPerfStats {
        fn clone(&self) -> Self {
            *self
        }
    }
    impl Copy for DynamicPerfStats {}

    impl DynamicPerfStatsCollect for DynamicPerfStats {
        fn count_stmt_size(&mut self, entry: &MixedStatement) {
            self.total_claim_size += statement_size(entry);
        }

        fn count_assertion_size(&mut self, assertion: &Assertion) {
            self.total_lemma_size += lemma_size(assertion);
        }

        fn update_stack_depth(&mut self, size: u64) {
            self.max_stack_depth.update_maximum(size);
        }

        fn update_stack_size(&mut self, size: u64) {
            self.max_stack_size.update_maximum(size);
        }

        fn update_max_subst_size(&mut self, size: u64) {
            self.subst_size.add_to_current(size);
        }

        fn reset_current_subst_size(&mut self) {
            self.subst_size.reset_current();
        }
    }

    impl DynamicPerfStatsViewer for DynamicPerfStats {
        fn get_total_claim_size(&self) -> u64 {
            self.total_claim_size
        }

        fn get_total_lemma_size(&self) -> u64 {
            self.total_lemma_size
        }

        fn get_max_stack_depth(&self) -> u64 {
            self.max_stack_depth.get_maximum()
        }

        fn get_max_stack_size(&self) -> u64 {
            self.max_stack_size.get_maximum()
        }

        fn get_max_subst_size(&self) -> u64 {
            self.subst_size.get_maximum()
        }
    }

    impl StaticPerfStatsCollect for StaticPerfStats {
        fn count_prop(&mut self) {
            self.prop_count += 1;
        }

        fn count_constant(&mut self) {
            self.constant_count += 1;
        }

        fn count_variable(&mut self) {
            self.variable_count += 1;
        }

        fn count_f_hypotheses(&mut self, size: u64) {
            self.f_hypothesis_count += size;
        }

        fn count_e_hypotheses(&mut self, size: u64) {
            self.e_hypothesis_count += size;
        }

        fn count_disjoint_vars(&mut self, size: u64) {
            self.disjoint_vars_count += size;
        }

        fn count_proof_steps(&mut self, size: u64) {
            self.proof_steps_count += size;
        }

        fn set_last_prop(&mut self, prop: Option<crate::Label>) {
            self.last_prop = prop;
        }
    }

    impl StaticPerfStatsViewer for StaticPerfStats {
        fn get_prop_count(&self) -> u64 {
            self.prop_count
        }

        fn get_constant_count(&self) -> u64 {
            self.constant_count
        }

        fn get_variable_count(&self) -> u64 {
            self.variable_count
        }

        fn get_f_hypothesis_count(&self) -> u64 {
            self.f_hypothesis_count
        }

        fn get_e_hypothesis_count(&self) -> u64 {
            self.e_hypothesis_count
        }

        fn get_disjoint_vars_count(&self) -> u64 {
            self.disjoint_vars_count
        }

        fn get_proof_steps_count(&self) -> u64 {
            self.proof_steps_count
        }

        fn get_last_prop(&self) -> Option<crate::Label> {
            return self.last_prop;
        }
    }

    impl DynamicPerfStatsCollect for PerfStat {
        fn count_stmt_size(&mut self, entry: &MixedStatement) {
            self.dynamic_stats.count_stmt_size(entry);
        }

        fn count_assertion_size(&mut self, assertion: &Assertion) {
            self.dynamic_stats.count_assertion_size(assertion);
        }

        fn update_stack_depth(&mut self, size: u64) {
            self.dynamic_stats.update_stack_depth(size);
        }

        fn update_stack_size(&mut self, size: u64) {
            self.dynamic_stats.update_stack_size(size);
        }

        fn update_max_subst_size(&mut self, size: u64) {
            self.dynamic_stats.update_max_subst_size(size);
        }

        fn reset_current_subst_size(&mut self) {
            self.dynamic_stats.reset_current_subst_size();
        }
    }

    impl DynamicPerfStatsViewer for PerfStat {
        fn get_total_claim_size(&self) -> u64 {
            self.dynamic_stats.get_total_claim_size()
        }

        fn get_total_lemma_size(&self) -> u64 {
            self.dynamic_stats.get_total_lemma_size()
        }

        fn get_max_stack_depth(&self) -> u64 {
            self.dynamic_stats.get_max_stack_depth()
        }

        fn get_max_stack_size(&self) -> u64 {
            self.dynamic_stats.get_max_stack_size()
        }

        fn get_max_subst_size(&self) -> u64 {
            self.dynamic_stats.get_max_subst_size()
        }
    }

    impl StaticPerfStatsCollect for PerfStat {
        fn count_prop(&mut self) {
            self.static_stats.count_prop();
        }

        fn count_constant(&mut self) {
            self.static_stats.count_constant();
        }

        fn count_variable(&mut self) {
            self.static_stats.count_variable();
        }

        fn count_f_hypotheses(&mut self, size: u64) {
            self.static_stats.count_f_hypotheses(size);
        }

        fn count_e_hypotheses(&mut self, size: u64) {
            self.static_stats.count_e_hypotheses(size);
        }

        fn count_disjoint_vars(&mut self, size: u64) {
            self.static_stats.count_disjoint_vars(size);
        }

        fn count_proof_steps(&mut self, size: u64) {
            self.static_stats.count_proof_steps(size);
        }

        fn set_last_prop(&mut self, prop: Option<crate::Label>) {
            self.static_stats.set_last_prop(prop);
        }
    }

    impl StaticPerfStatsViewer for PerfStat {
        fn get_prop_count(&self) -> u64 {
            self.static_stats.get_prop_count()
        }

        fn get_constant_count(&self) -> u64 {
            self.static_stats.get_constant_count()
        }

        fn get_variable_count(&self) -> u64 {
            self.static_stats.get_variable_count()
        }

        fn get_f_hypothesis_count(&self) -> u64 {
            self.static_stats.get_f_hypothesis_count()
        }

        fn get_e_hypothesis_count(&self) -> u64 {
            self.static_stats.get_e_hypothesis_count()
        }

        fn get_disjoint_vars_count(&self) -> u64 {
            self.static_stats.get_disjoint_vars_count()
        }

        fn get_proof_steps_count(&self) -> u64 {
            self.static_stats.get_proof_steps_count()
        }

        fn get_last_prop(&self) -> Option<crate::Label> {
            self.static_stats.get_last_prop()
        }
    }

    use crate::Assertion;
    pub fn input_statement_size(stat: &InputStatement) -> u64 {
        stat.len() as u64
    }
    pub fn statement_size(stat: &MixedStatement) -> u64 {
        stat.len() as u64
    }
    /// Approximate the amount of pattern matching and term
    /// construction work to apply an [Assertion] in a
    /// term-based prover.
    /// This estimated by added up the statement size of the
    /// conclusion and of $e hypotheses, with the idea that
    /// receiving an $f hypotheses is just receiving a term
    /// reference
    pub fn lemma_size(lemma: &Assertion) -> u64 {
        if lemma.f_hyps.is_empty() {
            // If there are no free variables
            // the conclusion can be a preconstructed term.
            // It would be strange to have `$e` hypotheses if there
            // are no free variables, but in that case the hypotheses
            // would also be fixed terms.
            return 0;
        }
        input_statement_size(&lemma.stat) + lemma.e_hyps.iter().map(input_statement_size).sum::<u64>()
    }
}
#[cfg(feature = "perf")]
use perfstat::*;

/// An abstraction of some vector facilities to be used by the apply_subst method
/// It is supported by both the no_hints and use_hints features
pub trait MMSliceTrait {
    /// reset the length
    fn clear(&mut self);
    /// extend the slice by a given slice (the given slice is cloned in-place)
    fn extend(&mut self, slice: &[Symbol]);
    /// extend the slice by a given element (the element is cloned)
    fn push(&mut self, s: &Symbol);
    /// yields the current sub-slice and starts a new slice
    fn as_slice(&mut self) -> GeneratedStatement;
}


#[derive(Debug)]
#[cfg_attr(any(feature = "perf", feature = "gen_hints"), derive(Default))]
pub struct MMHints {
    #[cfg(feature = "use_hints")]
    pub subst_vec: MMSlice<'static>,
    #[cfg(feature = "gen_hints")]
    pub last_prop: Option<Label>,
    #[cfg(feature = "gen_hints")]
    pub subst_size: TrackMaximum,
}

#[cfg(feature = "use_hints")]
impl MMHints {
    pub fn new(len: usize) -> MMHints {
        MMHints { subst_vec: MMSlice::new(len) }
    }
}

#[cfg(feature = "gen_hints")]
impl MMHints {
    /// A dummy method to make the signature with
    /// use_hints and gen_hints more similar
    pub fn new(_len: usize) -> MMHints {
        MMHints::default()
    }
}

/// Mutable structure for maintaining the math context
/// Handles opening and closing scopes and receiving new declarations
#[derive(Debug, Default)]
pub struct MMContext {
    labels: VecMap<Rc<LabelEntry>>,
    fs: FrameStack
}

impl MMContext {
    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn open_block(&mut self) {
        self.fs.push();
    }
    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn close_block(&mut self) {
        if !(self.fs.depth() > 0) {
            panic!("top level $}}")
        }
        self.fs.pop();
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_c(&mut self, c: Symbol) {
        self.fs.add_c(c)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_v(&mut self, v: Symbol) {
        self.fs.add_v(v)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_f(&mut self, label_u: Label, stat: InputStatement) {
        assert!(self.fs.depth() == 0);
        // Do this by extracting the typecode and variable from the statement and calling add_f
        self.fs
            .add_f(stat[1].clone(), stat[0].clone(), label_u.clone());
        // Then add the label to the labels map
        let data = LabelEntry::DollarF(stat);
        self.labels.insert(label_u, Rc::new(data));
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn make_assertion(&mut self, stat: InputStatement) -> Assertion {
        self.fs.make_assertion(stat)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn make_assertion_full(&mut self, stat: InputStatement) -> (Assertion, Vec<Label>) {
        self.fs.make_assertion_full(stat)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_a(&mut self, label: Label, assertion: Assertion) {
        let data = Rc::new(LabelEntry::DollarA(assertion));
        self.labels.insert(label, data);
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_e(&mut self, label_u: Label, stat: InputStatement) {
        self.fs.add_e(stat, label_u);
        let data = Rc::new(LabelEntry::DollarE(stat));
        self.labels.insert(label_u, data);
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_p(&mut self, label_u: Label, assertion: Assertion) {
        let data = Rc::new(LabelEntry::DollarP(assertion));
        self.labels.insert(label_u, data);
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn add_d(&mut self, stmt: InputStatement) {
        self.fs.add_d(stmt)
    }

    /// Finds all variables in a statement that are defined in the current frame.
    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn find_vars(&self, stat: &stmt) -> Vec<Symbol> {
        let mut vars: Vec<Symbol> = vec![];
        for x in stat.iter() {
            if !vars.contains(x) && self.fs.lookup_v(x) {
                vars.push(x.to_owned());
            }
        }
        vars
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn get_label_rc(&self, label: Label) -> Option<Rc<LabelEntry>> {
        self.labels.get(label).cloned()
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn get_label(&self, label: Label) -> Option<&LabelEntry> {
        self.labels.get(label).map(Deref::deref)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn lookup_f(&self, v: Symbol) -> Label {
        self.fs.lookup_f(v)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    fn lookup_d(&self, v1: Symbol, v2: Symbol) -> bool {
        self.fs.lookup_d(v1, v2)
    }

    #[cfg_attr(feature="prof-noinline-context",inline(never))]
    pub fn is_at_global_scope(&self) -> bool {
        self.fs.depth() == 0
    }
}

#[cfg(any())]
mod varsubst_btree {
    use super::*;
    struct VarSubst<'a>(BTreeMap<Symbol, &'a stmt>);
    impl<'a> VarSubst<'a> {
        pub fn new() -> Self {
            VarSubst(BTreeMap::new())
        }
        pub fn insert(&mut self, v: Symbol, stat: &'a stmt) {
            self.0.insert(v,stat);
        }
    }
    impl<'a> Index<Symbol> for VarSubst<'a> {
        type Output = &'a stmt;

        fn index(&self, v: Symbol) -> &Self::Output {
            self.0.index(&v)
        }
    }

    #[cfg_attr(feature="prof-noinline-subst",inline(never))]
    fn subst_get<'a,'b>(subst: &'a VarSubst<'b>, tok: &Symbol) -> Option<&'a &'b stmt> {
     subst.0.get(tok)
    }
}

type VarSubst<'a> = VarMap<&'a stmt>;
#[derive(Debug)]
pub struct VarMap<T>(VecMap<T>);
impl<T> VarMap<T> {
    pub fn new() -> Self {
        VarMap(VecMap::new())
    }
    pub fn insert(&mut self, v: Symbol, value: T) {
        self.0.insert(check_sym_to_var_ix(v), value);
    }
    pub fn get(&self, v: Symbol) -> Option<&T> {
        try_sym_to_var_ix(v).and_then(|ix| self.0.get(ix))
    }
    pub fn clear(&mut self) {
        self.0.clear()
    }
}
impl<'a,T: ?Sized> VarMap<&'a T> {
    pub fn recycle<'b>(self) -> VarMap<&'b T> {
        VarMap(self.0.recycle())
    }
}

impl<T> Index<Symbol> for VarMap<T> {
    type Output = T;

    fn index(&self, v: Symbol) -> &Self::Output {
        self.0.index(check_sym_to_var_ix(v))
    }
}
#[cfg_attr(feature="prof-noinline-subst",inline(never))]
fn subst_get<'a,'b>(subst: &'a VarSubst<'b>, tok: &Symbol) -> Option<&'a &'b stmt> {
    subst.get(*tok)
}

/// Applies a substitution to a statement, replacing all instances of symbols within it with other statements.
#[cfg_attr(feature="prof-noinline-subst",inline(never))]
fn check_subst(stat: &stmt, subst: &VarSubst, result: &stmt) -> bool {
    let mut stmt_i = stat.iter();
    let mut result_i = result.iter();
    while let Some(stmt_tok) = stmt_i.next() {
        if let Some(replacement) = subst_get(subst, stmt_tok) {
            for subst_tok in replacement.iter() {
                if let Some(result_tok) = result_i.next() {
                    if subst_tok != result_tok {
                        return false;
                    }
                } else {
                    return false;
                }
            }
        } else if  let Some(result_tok) = result_i.next() {
            if stmt_tok != result_tok {
                return false;
            }
        } else {
            return false;
        }
    }
    result_i.next().is_none()
}

/// The MM struct is used to read and verify metamath proofs.
#[derive(Debug)]
pub struct MM {
    pub context: MMContext,
    /// The label of the first theorem to verify, metamath will only verify theorems after this label, and will assume theorems before this label are true.
    // TODO We should probably consider getting rid of this start and stop label, as they are not used in the current implementation.
    pub begin_label: Option<Label>,
    pub stop_label: Option<Label>,
    subst_buf: Option<VarSubst<'static>>,
    #[cfg(feature = "perf")]
    pub mm_perf: PerfStat,
    #[cfg(any(feature = "use_hints", feature = "gen_hints"))]
    pub mm_hints: MMHints,
}

impl MM {
    pub fn new(begin_label: Option<Label>, stop_label: Option<Label>, _mm_hints: MMHints) -> MM {
        MM {
            context: MMContext::default(),
            begin_label,
            stop_label,
            subst_buf: Some(VarSubst::new()),
            #[cfg(feature = "perf")]
            mm_perf: PerfStat::default(),
            #[cfg(any(feature = "use_hints", feature = "gen_hints"))]
            mm_hints: _mm_hints,
        }
    }

    /// Reads in metamath
    /// Returns true if did not early exit at self.stop_label
    pub fn read<T: Tokens<'static>>(&mut self, tokens: &mut T) -> bool {
        //println!("Starting function read");
        if !self.read_block(tokens) {
            return false
        }
        if !self.context.is_at_global_scope() {
            panic!("Unclosed block")
        }
        true
    }

    pub fn read_block<T: Tokens<'static>>(&mut self, tokens: &mut T) -> bool {
        let mut label: Option<Label> = None;
        let mut tok: Option<Token>;
        // Loop through the tokens, reading in the next at the end of each iteration
        // begin_label is assigned to None once the label is found
        // to denote checking should begin.
        loop {
            tok = tokens.read();
            match tok {
                // if we encounter ${ we are entering a block
                Some(DelimOpenBlock) => {
                    self.context.open_block()
                }
                // if we encounter $} we are finishig a block
                Some(DelimCloseBlock) => {
                    self.context.close_block()
                }
                // If we encounter $c, add the constant(s) to the current frame
                Some(DelimC) => {
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.count_constant();
                    }
                    for tok in tokens.read_statement().iter() {
                        self.context.add_c(tok.clone());
                    }
                }
                // If we encounter $v, add the variable to the current frame
                Some(DelimV) => {
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.count_variable();
                    }
                    for tok in tokens.read_statement().iter() {
                        self.context.add_v(tok.clone());
                    }
                }
                // If we encounter $f, add the variable-type hypothesis to the current frame
                Some(DelimF) => {
                    let stat = tokens.read_statement();
                    let label_u: Label = label.expect("$f must have a label").into();
                    if stat.len() != 2 {
                        panic!("$f must have length 2");
                    }
                    self.context.add_f(label_u, stat);
                    label = None;
                }
                // If we encounter $a, add the axiom to the current frame
                Some(DelimA) => {
                    let label_u = label.expect("$a must have a label");
                    match &self.stop_label {
                        Some(a) if a == &label_u => return false,
                        _ => {}
                    }

                    let assertion = self.context.make_assertion(tokens.read_statement());
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.count_f_hypotheses(assertion.f_hyps.len() as u64);
                        self.mm_perf.count_e_hypotheses(assertion.e_hyps.len() as u64);
                        self.mm_perf.count_disjoint_vars(assertion.dvs.len() as u64);
                    }
                    self.context.add_a(label_u, assertion);
                    label = None;
                }
                // If we encounter $e, add the logical-type hypothesis to the current frame
                Some(DelimE) => {
                    let label_u: Label = label.expect("e must have label").into();

                    let stat = tokens.read_statement();
                    self.context.add_e(label_u, stat);
                    label = None;
                }
                // If we encounter $p, add the provable assertion to the current frame
                // At the same time, we verify the assertion
                Some(DelimP) => {
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.count_prop();
                    }
                    let label_u = label.clone().expect("$p must have label");
                    if label == self.stop_label {
                        //could be rewritten better
                        return false;
                    }
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.set_last_prop(label);
                    }
                    #[cfg(feature = "gen_hints")]
                    {
                        self.mm_hints.last_prop = label;
                    }
                    let claim = tokens.read_claim();
                    let proof = tokens.read_proof();
                    // If we encounter the begin label, set it to None to denote it is time to check proofs
                    if self.begin_label.is_some() && &label_u == self.begin_label.as_ref().unwrap()
                    {
                        self.begin_label = None;
                    }
                    if self.begin_label.is_none() {
                        // println!("verifying {}", label_u);
                        self.verify(label_u, claim, proof);
                    }
                    let assertion = self.context.make_assertion(claim);
                    #[cfg(feature = "perf")]
                    {
                        self.mm_perf.count_proof_steps(proof.len() as u64);
                        self.mm_perf.count_f_hypotheses(assertion.f_hyps.len() as u64);
                        self.mm_perf.count_e_hypotheses(assertion.e_hyps.len() as u64);
                        self.mm_perf.count_disjoint_vars(assertion.dvs.len() as u64);
                    }
                    self.context.add_p(label_u, assertion);
                    label = None;
                }
                // If we encounter a $d, add the disjoint-variable restriction to the current frame
                Some(DelimD) => {
                    self.context.add_d(tokens.read_statement());
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

    pub fn retrieve_theorem_statement(&self, target_theorem: Option<TokenCode>) -> Option<Vec<TokenCode>> {
        let mut some_theorem: Option<Vec<TokenCode>> = None;

        if let Some(target_theorem) = &target_theorem {
            let value: Option<&LabelEntry> = self.context.get_label(*target_theorem);
            if let Some(LabelEntry::DollarP(a)) = value {
                // println!("Verifying hypothesis  {:?}", a);
                some_theorem = Some(a.stat.iter().map(|s| s.token_code()).collect());
            }
        }
        some_theorem
    }

    /// Applies a substitution to a statement, replacing all instances of symbols within it with other statements.
    #[cfg_attr(feature="prof-noinline-subst",inline(never))]
    fn apply_subst(&mut self, stat: &stmt, subst: &VarSubst) -> MixedStatement {
        #[cfg(feature = "use_hints")] let subst_vec: &mut MMSlice<'_> = &mut self.mm_hints.subst_vec;
        #[cfg(feature = "no_hints")] let subst_vec : &mut MMSlice = &mut MMSlice::new();
        for tok in stat.iter() {
            match subst_get(subst, tok) {
                Some(replacement) => subst_vec.extend(replacement),
                None => subst_vec.push(tok),
            }
        }
        #[cfg(feature = "perf")]
        {
            self.mm_perf.update_max_subst_size(subst_vec.len() as u64);
        }
        #[cfg(feature = "gen_hints")]
        {
            self.mm_hints.subst_size.add_to_current(subst_vec.len() as u64);
        }
        MixedStatement::generated(subst_vec.as_slice())
    }

    /// Decompresses a proof and verifies it.
    fn decompress_and_verify(&mut self, stat: InputStatement, proof: Proof) {
        // yes I copy pasted this, I know it's bad
        // so please work
        //println!("complete proof {:?}", proof);
        //
        let ep = proof
            .iter()
            .position(|x| *x == codes::CLOSE_PAREN)
            .expect("Failed to find matching parenthesis");

        let mut labels: Vec<Label> = self.get_labels(stat, ep);
        let hyp_end = labels.len(); //when the f and e end
        labels.extend((&proof[1..ep]).iter().cloned());
        // println!("Label list: {:?}", labels);

        let label_end = labels.len();

        let proof_indices: Vec<Option<usize>> = proof[ep + 1..]
            .into_iter()
            .map(|&c| {
                if c == codes::COPY {
                    None
                } else {
                    Some((c - codes::COPY - 1) as usize)
                }
            })
            .collect();

        if proof_indices.is_empty() {
            // we didn't do the proof yet
            return;
        }

        let mut subproofs: Vec<MixedStatement> = vec![]; //stuff tagged  with Zs
                                                    //let mut prev_proofs: Vec<CompressedProof> = vec![]; // when we construct a subproof, we have to know the hyps
        let mut stack: Vec<MixedStatement> = vec![];

        // loop through the proof indices, verifying each step
        for pf_int in &proof_indices {
            match pf_int {
                None => {
                    let last_proof = stack.last()
                        .expect("Error in decompressing proof, found unexpected Z");
                    subproofs.push(last_proof.clone());
                }
                Some(i) if *i < hyp_end => {
                    //mandatory hypothesis
                    let label = labels[*i];
                    let data = self.context.get_label_rc(label).unwrap();

                    match data.deref() {
                        LabelEntry::DollarA(a) | LabelEntry::DollarP(a) => {
                            // println!("Verifying hypothesis  {:?}", a);
                            self.verify_assertion(a, &mut stack);
                        }
                        LabelEntry::DollarF(x) | LabelEntry::DollarE(x) => {
                            stack.push(MixedStatement::input(*x));
                        }
                    }
                }

                Some(i) if hyp_end <= *i && *i < label_end => {
                    //one of the given labels in the proof

                    let label_name = labels[*i];

                    let step_data = self.context.get_label_rc(label_name).unwrap();

                    match step_data.deref() {
                        LabelEntry::DollarA(a) | LabelEntry::DollarP(a) => {
                            self.verify_assertion(a, &mut stack);
                        }
                        LabelEntry::DollarE(x) | LabelEntry::DollarF(x) => {
                            stack.push(MixedStatement::input(*x));
                        }
                    }
                }

                Some(i) if label_end <= *i => {
                    // no need to verify something already proved
                    let pf = &subproofs[(*i as usize) - label_end];
                    stack.push(pf.clone());
                }
                _ => {
                    panic!("Bad compression")
                }
            }
        }

        if stack.len() > 1 {
            panic!("stack has an entry greater than >1 at end")
        }
        if stack[0].as_slice() != stat {
            panic!(
                "assertion proved {:?} but does not match expected {:?} ",
                stack[0], stat
            );
        }
    }

    fn get_labels(&mut self, stat: InputStatement, _ep: usize) -> Vec<Label> {
        let (Assertion {
            dvs: _dm,
            f_hyps: mand_hyp_statements,
            e_hyps: _,
            stat: _,
            },
            e_labels) = self.context.make_assertion_full(stat);
        // println!("mand_hyps_statements {:?}", mand_hyp_statements);

        let f_labels = mand_hyp_statements
            .iter()
            .map(|(_k, v)| self.context.lookup_f(v.clone()));

        let labels: Vec<Label> = f_labels.chain(e_labels).collect(); // contains both the mandatory hypotheses and the e println!("Labels {:?}", labels);

        labels
    }

    // fn print_stack(stack: &Vec<MixedStatement>) {
    //     println!(
    //         "stack: {:?}",
    //         stack.iter().map(|x| x.join(" ")).collect::<Vec<String>>()
    //     );
    // }

    /// Verifies an assertion, popping the necessary number of hypotheses from the stack.
    /// Pushes the instantiated statement of the assertion onto the stack.
    fn verify_assertion(&mut self, assertion: &Assertion, stack: &mut Vec<MixedStatement>) {
        let Assertion {
            dvs: distinct,
            f_hyps: mand_var,
            e_hyps: hyp,
            stat: result,
        } = assertion;
        #[cfg(feature = "perf")]
        {
            self.mm_perf.count_assertion_size(assertion);
        }
        // Find the number of hypotheses to pop from the stack
        let npop = mand_var.len() + hyp.len();
        let sp = stack.len() - npop;
        if stack.len() < npop {
            panic!("proof stack underflow")
        }
        let mut sp = sp;
        let mut subst: VarSubst = self.subst_buf.take().unwrap().recycle();

        // Obtain the mandatory variable hypotheses from the stack
        for (k, v) in mand_var {
            let entry: &stmt = stack[sp].borrow();

            if &entry[0] != k {
                panic!(
                    "proof stack entry doesn't match mandatory var hypothesis, found {:?} and {:?}",
                    &entry[0], k
                );
            }

            subst.insert(v.clone(), &entry[1..]);
            sp += 1;
        }

        // Check that the disjoint-variable restrictions are satisfied
        for &(x, y) in distinct {
            let x_vars = self.context.find_vars(subst[x]);
            let y_vars = self.context.find_vars(subst[y]);

            for x in &x_vars {
                for y in &y_vars {
                    if x == y || !self.context.lookup_d(x.clone(), y.clone()) {
                        panic!("Disjoint violation");
                    }
                }
            }
        }

        // Obtain the logical-type hypotheses from the stack
        for h in hyp {
            let entry = &stack[sp];
            #[cfg(feature = "perf")]
            {
                self.mm_perf.count_stmt_size(entry);
            }
            if !check_subst(h, &subst, entry.borrow()) {
                panic!(
                    "Stack entry doesn't match hypothesis"
                );
                // panic!(
                //     "Stack entry: {:?} doesn't match hypothesis {:?}",
                //     entry, &subst_h
                // );
            }
            sp += 1;
        }

        #[cfg(feature = "perf")]
        {
            self.mm_perf.update_stack_depth(stack.len() as u64);
            self.mm_perf.update_stack_size(stack.iter().map(|s| s.len() as u64).sum());
        }
        let substituted = self.apply_subst(result, &subst);
        self.subst_buf = Some(subst.recycle());
        stack.drain(stack.len() - npop..);
        #[cfg(feature = "perf")]
        {
            self.mm_perf.count_stmt_size(&substituted);
        }
        stack.push(substituted);
    }

    /// Verifies a statement with a given proof.
    pub fn verify(&mut self, _stat_label: Label, stat: InputStatement, proof: Proof) {
        #[cfg(feature = "perf")]
        {
            self.mm_perf.reset_current_subst_size();
        }
        #[cfg(feature = "gen_hints")]
        {
            self.mm_hints.subst_size.reset_current();
        }
        #[cfg(feature = "use_hints")]
        {
            self.mm_hints.subst_vec.clear();
        }
        let mut stack: Vec<MixedStatement> = vec![];
        let _stat_type = stat[0].clone();
        if proof[0] == codes::OPEN_PAREN {
            self.decompress_and_verify(stat, proof);
            return;
        }

        if proof.is_empty() {
            // println!("Did not find proof for {}, skipping", stat_label);
            // TODO: Should we panic here?
            return;
        }

        // Loop through the proof, verifying each step by pushing / popping from the stack
        for &label in proof {
            // self.labels.get(&label).or_else(|| panic!("No label for {}", label));
            let stepdat = self.context.get_label_rc(label).unwrap();

            match stepdat.deref() {
                LabelEntry::DollarA(a) | LabelEntry::DollarP(a) => {
                    self.verify_assertion(a, &mut stack);
                }
                LabelEntry::DollarF(x) | LabelEntry::DollarE(x) => {
                    stack.push(MixedStatement::input(x));
                }
            }
        }
        if stack.len() != 1 {
            panic!("stack has an entry greater than >1 at end")
        }
        if stack[0].as_slice() != stat {
            panic!("assertion proved doesn't match ")
        }
    }

    // fn dump(&mut self) {
    //     // println!("{:?}", self.labels);
    // }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let _mm = MM::new(None, None, MMHints::default());
        // result.verify(??)
        // assert_eq!(result, 4);
    }
}
