//! The zkVM guest program that verifies metamath proofs.

use risc0_zkvm::guest::env;

extern crate alloc;

use alloc::vec::Vec;

use mmtokens::TokenCode;
use mmlib::{MM, MMHints, SliceTokens};

/// Checks a single file with no imports, given as a path string. Returns whether is succeeded
fn main() {
    let max_subst_size: usize = env::read();
    let target_theorem: Option<TokenCode> = env::read();
    let mut mm = MM::new(None, None, MMHints::new(max_subst_size));
    let batches: usize = env::read();
    for batch in 0..batches {
        if batch > 0 {
            env::pause(0);
        }
        let token_count: usize = env::read();
        let mut tokens: Vec<TokenCode> = vec![0; token_count];
        env::read_slice(&mut tokens);


        let out = mm.read_block(&mut SliceTokens::new(tokens.leak()));
        if !out {
            panic!("Out should be successful")
        }
        assert!(mm.context.is_at_global_scope());
    }

    let some_theorem = mm.retrieve_theorem_statement(target_theorem);
    if let Some(tokens) = &some_theorem {
        env::commit(tokens);
    }
}
