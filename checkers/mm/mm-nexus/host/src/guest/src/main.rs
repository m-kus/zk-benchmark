#![cfg_attr(target_arch = "riscv32", no_std, no_main)]

use nexus_rt::{println, read_private_input, write_output};

extern crate alloc;
use alloc::vec::Vec;

use mmtokens::TokenCode;
use mmlib::{MM,SliceTokens,LabelEntry,MMHints};
use common::{Input, Output};

#[nexus_rt::main]
fn main() {
    let input = read_private_input::<Input>();
    if let Ok((tokens, max_subst_size, target_theorem)) = input {

        let mut mm = MM::new(None,None,MMHints::new(max_subst_size as usize));
        let out = mm.read(&mut SliceTokens::new(tokens.leak()));
        if !out {
            println!("Checking proof failed");
            panic!();
        }

        if let Some(tokens) = mm.retrieve_theorem_statement(target_theorem) {
            write_output::<Output>(&tokens);
        } else if target_theorem.is_some() {
            println!("Target theorem not found");
            panic!();
        }
    } else {
        println!("Could not read input");
        panic!();
    }
}
