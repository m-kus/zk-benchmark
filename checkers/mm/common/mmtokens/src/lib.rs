#![no_std]

//! A metamath file is tokenized to a list of fixed-size integers.
//!
//! Reserved codes are assigned to the delimiters, the identifiers
//! `(` and `)`, and one code not corresponding to any string is
//! reserved for the role of `Z` in compressed proofs.
//!
//! Other codes will be treated as distinct identifiers by the prover,
//! which is outside of compressed proofs the only functional role
//! of the text of tokens.
//!
//! Compressed proofs are pretokenized as a list of code numbers
//! which are directly the lemma indices of the compressed proof,
//! offset so `codes::FIRST_IDENT` represents the index 1
//! to be outside the range of reserved codes, and coding `Z`
//! as `codes::COPY`.
//! The compressed proof ends and we return to the usual
//! interpretation of codes as representing distinct tokens
//! at the regular code for the `$.` delimiter, `codes::END_STMT`,
//! which is outside the range of codes used for indices in
//! a compressed proof.
//!
//! Translating a list of strings into a pretokenized proof
//! doesn't fully parse the file, it just attempts to
//! recognize and convert a compressed proof after
//! encoutering two tokens `$= (`, scanning and converting
//! identifiers normally until a `)`, and then trying
//! to decode a compressed proof until `$.`.

extern crate alloc;

use core::slice;

use crate::alloc::borrow::{Borrow, ToOwned};
use alloc::collections::BTreeMap;

use alloc::string::{String, ToString};
use alloc::vec;
use alloc::vec::Vec;

pub fn strip_comments(tokens: Vec<String>) -> Vec<String> {
    let mut new_toks: Vec<String> = Vec::new();
    let mut in_comment = false;
    for tok in tokens {
        if tok == "$(" {
            in_comment = true;
            continue;
        } else if tok == "$)" {
            in_comment = false;
            continue;
        } else {
            if !in_comment {
                new_toks.push(tok);
            }
        }
    }
    new_toks
}

pub type TokenCode = u16;
/// Variable index (zero-based) within the range of
/// TokenCode reserved for variables
pub type VarIdx = u16;

pub struct SimpleIdentTable {
    to_text: Vec<String>,
    to_code: BTreeMap<String, TokenCode>,
    next_token: TokenCode,
}
impl SimpleIdentTable {
    fn new_empty() -> Self {
        SimpleIdentTable {
            to_text: Vec::new(),
            to_code: BTreeMap::new(),
            next_token: 0,
        }
    }
    pub fn new() -> Self {
        let mut t = SimpleIdentTable::new_empty();
        for tok in DELIMITERS {
            t.add_entry(tok.to_string());
        }
        t.reserve_code("<COPY>".to_owned());
        t.intern("(");
        t.intern(")");
        t
    }
    pub fn add_entry(&mut self, tok: String) -> TokenCode {
        self.to_text.push(tok.clone());
        let v = self.next_token;
        self.next_token += 1;
        self.to_code.insert(tok, v);
        v
    }
    pub fn lookup<T: Borrow<str>>(&self, tok: T) -> Option<TokenCode> {
        self.to_code.get(tok.borrow()).copied()
    }
    pub fn intern<T: Borrow<str> + Into<String>>(&mut self, tok: T) -> TokenCode {
        if let Some(&v) = self.to_code.get(tok.borrow()) {
            v
        } else {
            let str = tok.into();
            if str.starts_with('$') {
                panic!("Unsupported delimiter {}", str);
            }
            self.add_entry(str)
        }
    }
    fn reserve_code(&mut self, show_as: String) -> TokenCode {
        self.to_text.push(show_as);
        let v = self.next_token;
        if v == TokenCode::MAX {
            panic!("Ran out of token codes");
        }
        self.next_token += 1;
        v
    }
    pub fn get(&self, tok: TokenCode) -> Option<&str> {
        self.to_text.get(tok as usize).map(String::as_ref)
    }
    pub fn max_code(&self) -> TokenCode {
        self.next_token - 1
    }
}

fn collect_words<'a>(mut words: impl Iterator<Item=&'a str>) -> String {
    let mut out = String::new();
    if let Some(first) = words.next() {
        out.push_str(first);
    } else {
        return out;
    }
    for w in words {
        out.push(' ');
        out.push_str(w);
    }
    out
}

pub fn show_symbol_tokens(idents: &impl IdentTable, tokens: &[TokenCode]) -> String {
    collect_words(tokens.into_iter().map(|tok| {idents.get_symbol(*tok).unwrap()}))
}
pub fn show_symbols(idents: &impl IdentTable, stmt: &[Symbol]) -> String {
    collect_words(stmt.into_iter().map(|sym| {idents.get_symbol(sym.token_code()).unwrap()}))
}

pub const DELIMITERS: [&'static str; 11] = [
    "$.", "$c", "$v", "$f", "$d", "$a", "$e", "$p", "$=", "${", "$}",
];
pub mod codes {
    use super::TokenCode;

    pub const END_STMT: TokenCode = 0;
    pub const END_CLAIM: TokenCode = 8;
    pub const COPY: TokenCode = 11;
    pub const FIRST_IDENT: TokenCode = 12;
    pub const OPEN_PAREN: TokenCode = 12;
    pub const CLOSE_PAREN: TokenCode = 13;

    pub const VAR_BASE: TokenCode = 14;
    pub const SYM_BASE: TokenCode = 14+256;
}

pub fn is_var_code(x: TokenCode) -> bool {
    x.wrapping_sub(codes::VAR_BASE) < 256
}

use Token::*;
#[derive(PartialEq, Eq)]

pub enum Token {
    DelimEndStmt,
    DelimC,
    DelimV,
    DelimF,
    DelimD,
    DelimA,
    DelimE,
    DelimP,
    DelimEndClaim,
    DelimOpenBlock,
    DelimCloseBlock,
    TokUser(TokenCode),
}
pub fn classify(code: TokenCode) -> Token {
    match code {
        0 => DelimEndStmt,
        1 => DelimC,
        2 => DelimV,
        3 => DelimF,
        4 => DelimD,
        5 => DelimA,
        6 => DelimE,
        7 => DelimP,
        8 => DelimEndClaim,
        9 => DelimOpenBlock,
        10 => DelimCloseBlock,
        c => TokUser(c),
    }
}
impl Token {
    pub fn to_code(&self) -> TokenCode {
        match self {
            DelimEndStmt => 0,
            DelimC => 1,
            DelimV => 2,
            DelimF => 3,
            DelimD => 4,
            DelimA => 5,
            DelimE => 6,
            DelimP => 7,
            DelimEndClaim => 8,
            DelimOpenBlock => 9,
            DelimCloseBlock => 10,
            &TokUser(c) => c,
        }
    }
    pub fn delim_to_string(&self) -> Option<&'static str> {
        match self {
            DelimEndStmt => Some("$."),
            DelimC => Some("$c"),
            DelimV => Some("$v"),
            DelimF => Some("$f"),
            DelimD => Some("$d"),
            DelimA => Some("$a"),
            DelimE => Some("$e"),
            DelimP => Some("$p"),
            DelimEndClaim => Some("$="),
            DelimOpenBlock => Some("${"),
            DelimCloseBlock => Some("$}"),
            TokUser(_) => None,
        }
    }
}

fn parse_compressed_proof(
    idents: &mut SimpleIdentTable,
    tokens: &mut vec::IntoIter<String>,
    out: &mut Vec<TokenCode>,
) {
    loop {
        if let Some(t) = tokens.next() {
            let c = idents.intern(t);
            out.push(c);
            if c == codes::CLOSE_PAREN {
                break;
            }
        } else {
            panic!("EOF before ) in compressed proof")
        }
    }
    let mut incomplete_num = None;
    loop {
        if let Some(t) = tokens.next() {
            if t == "$." {
                if let None = incomplete_num {
                    out.push(codes::END_STMT);
                    break;
                } else {
                    panic!("Incomplete number at $. in compressed proof")
                }
            } else {
                for c in t.bytes() {
                    match c {
                        b'A'..=b'T' => {
                            let val: TokenCode =
                                ((c - b'A') as TokenCode) + 1 + 20 * incomplete_num.take().unwrap_or(0);
                            out.push(val + codes::COPY);
                        }
                        b'U'..=b'Y' => {
                            let d: TokenCode = (c - b'U') as TokenCode + 1 + 5 * incomplete_num.unwrap_or(0);
                            incomplete_num = Some(d);
                        }
                        b'Z' => {
                            if let None = incomplete_num {
                                out.push(codes::COPY);
                            } else {
                                panic!("Incomplete number at Z in compressed proof")
                            }
                        }
                        _ => {
                            panic!("Illegal character in number in compressed proof")
                        }
                    }
                }
            }
        } else {
            panic!("EOF before $. in compressed proof")
        }
    }
}

// The representation of a compressed proof turns the
// tokens between ) and $. into a list of the decoded numbers,
// represented as codes from codes::COPY upwards
pub fn preparse(tokens: Vec<String>) -> (SimpleIdentTable, Vec<TokenCode>) {
    let mut idents = SimpleIdentTable::new();
    let mut codes = vec![];
    let mut tokens = tokens.into_iter();
    while let Some(t) = tokens.next() {
        let c = idents.intern(t);
        codes.push(c);
        if c == codes::END_CLAIM {
            if let Some(t) = tokens.next() {
                let c = idents.intern(t);
                codes.push(c);
                if c == codes::OPEN_PAREN {
                    parse_compressed_proof(&mut idents, &mut tokens, &mut codes)
                }
            } else {
                panic!("EOF after $=")
            }
        }
    }
    (idents, codes)
}

#[derive(Default, PartialEq, Eq, PartialOrd, Ord, Debug, Copy, Clone)]
#[repr(transparent)]
pub struct Symbol {
    val: TokenCode,
}

pub const OPEN_PAREN_SYM: Symbol = Symbol { val: codes::OPEN_PAREN };
pub const CLOSE_PAREN_SYM: Symbol = Symbol { val: codes::CLOSE_PAREN };

impl Symbol {
    pub fn token_code(&self) -> TokenCode {
        self.val
    }
}
impl From<Symbol> for TokenCode {
    fn from(value: Symbol) -> Self {
        value.val
    }
}

impl TryFrom<TokenCode> for Symbol {
    type Error = &'static str;
    fn try_from(value: TokenCode) -> Result<Self, &'static str> {
        if value >= codes::FIRST_IDENT {
            Ok(Symbol { val: value })
        } else {
            Err("Symbol does not accept token codes for delimiters")
        }
    }
}

pub fn cast_tokens(tokens: &[TokenCode]) -> &[Symbol] {
    unsafe { core::slice::from_raw_parts(tokens.as_ptr() as *const Symbol, tokens.len()) }
}
pub fn stmt_tokens(stat: &[Symbol]) -> &[TokenCode] {
    unsafe { slice::from_raw_parts(stat.as_ptr() as *const TokenCode, stat.len()) }
}

pub fn is_var_symbol(x: Symbol) -> bool {
    is_var_code(x.token_code())
}

pub fn try_sym_to_var_ix(v: Symbol) -> Option<VarIdx> {
    let code = v.token_code().wrapping_sub(codes::VAR_BASE);
    (code < 256).then_some(code)
}
pub fn check_sym_to_var_ix(v: Symbol) -> VarIdx {
    let code = v.token_code().wrapping_sub(codes::VAR_BASE);
    assert!(code < 256); // values <= CLOSE_PAREN will wrap
    code
}

pub trait IdentTable {
    fn get_symbol(&self, token: TokenCode) -> Option<&str>;
    fn lookup_symbol(&self, tok: impl Borrow<str>) -> Option<TokenCode>;
    fn get_label(&self, token: TokenCode) -> Option<&str>;
    fn lookup_label(&self, label: impl Borrow<str>) -> Option<TokenCode>;
}

impl IdentTable for SimpleIdentTable {
    fn get_symbol(&self, token: TokenCode) -> Option<&str> {
        self.get(token)
    }

    fn lookup_symbol(&self, tok: impl Borrow<str>) -> Option<TokenCode> {
        self.lookup(tok)
    }

    fn get_label(&self, token: TokenCode) -> Option<&str> {
        self.get(token)
    }

    fn lookup_label(&self, label: impl Borrow<str>) -> Option<TokenCode> {
        self.lookup(label)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_token_codes() {
        for ix in 0..DELIMITERS.len() {
            let c = ix as TokenCode;
            assert_eq!(c, classify(c).to_code());
            assert_eq!(Some(DELIMITERS[c as usize]), classify(c).delim_to_string());
        }
    }
}
