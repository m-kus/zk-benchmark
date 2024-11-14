extern crate alloc;

use alloc::vec::Vec;

use mmlib::{SliceTokens, MM, MMHints};
use mmtokens::TokenCode;
use wasm_bindgen::prelude::*;
use zkwasm_rust_sdk::wasm_input;

#[wasm_bindgen]
pub fn zkmain() {
    let max_subst_size: usize = unsafe { wasm_input(0) } as u32 as usize;
    let target_theorem: TokenCode = unsafe { wasm_input(0) } as u16 as TokenCode;
    let target_theorem: Option<TokenCode> = if target_theorem == 0 { None } else { Some(target_theorem) };
    let len = unsafe { wasm_input(0) };
    let tokens: Vec<TokenCode> = (0..len)
        .map(|_| unsafe { wasm_input(0) } as TokenCode)
        .collect();

    let mut mm = MM::new(None, None, MMHints::new(max_subst_size));

    let out = mm.read(&mut SliceTokens::new(tokens.leak()));
    if !out {
        panic!("Out should be successful")
    }
    if let Some(_tokens) = mm.retrieve_theorem_statement(target_theorem) {
        // commit(&_tokens);
    } else if target_theorem.is_some() {
        panic!("Target theorem not found");
    }
}
