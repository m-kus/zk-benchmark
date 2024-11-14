#![cfg_attr(feature = "guest", no_std)]
#![no_main]

extern crate alloc;
use alloc::vec::Vec;

use mmtokens::TokenCode;
use mmlib::{MM,SliceTokens,MMHints};

#[jolt::provable(max_input_size = 89700, stack_size = 10000)]
fn check_proof(tokens: Vec<TokenCode>, max_subst_size: u32, target_theorem: Option<TokenCode>) -> Option<Vec<TokenCode>> {
    let mut mm = MM::new(None,None,MMHints::new(max_subst_size as usize));
    let out = mm.read(&mut SliceTokens::new(tokens.leak()));
    if !out {
        panic!("Checking proof failed");
    }
    mm.retrieve_theorem_statement(target_theorem)
}
