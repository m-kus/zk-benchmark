use mmlib_host::{compute_hints, prepare_mm_file, MainTheoremArgs};


use std::fs::File;
use std::io::Write;

use clap::Parser;

/// This function runs the proof creation and checking pipeline for a given metamath file.
fn create_and_check_proof(file: &str, main_theorem: MainTheoremArgs, output: &str) {
    let (_ident_table, axiom_file_tokens, max_subst_size, target_theorem) = preprocess_file(file, main_theorem);

    println!("Creating environment");

    let mut fd = File::create(output).unwrap();
    fd.write(&(max_subst_size as u64).to_be_bytes()).unwrap();
    let target_theorem = target_theorem.unwrap_or(0);
    fd.write(&(target_theorem as u64).to_be_bytes()).unwrap();
    fd.write(&(axiom_file_tokens.len() as u64).to_be_bytes())
        .unwrap();
    for token in axiom_file_tokens {
        fd.write(&(token as u64).to_be_bytes()).unwrap();
    }
}

fn preprocess_file(file: &str, main_theorem: MainTheoremArgs) -> (mmlib_host::SplitIdentTable, Vec<u16>, u32, Option<u16>) {
    let (ident_table, tokens) = prepare_mm_file(file);
    let (max_subst_size, last_prop) = compute_hints(&tokens);
    let target_theorem = main_theorem.process(&ident_table, last_prop);
    (ident_table, tokens, max_subst_size, target_theorem)
}


#[derive(Parser)]
#[command(about = "Generate a SP1 ZK certificate for checking a MetaMath proof")]
#[command(version, arg_required_else_help = true, long_about = None)]
struct Args {
    /// Path to the MetaMath file containing the proof to be verified
    file: String,

    /// Path to the output file to write the input for the guest
    output: String,

    #[command(flatten)]
    main_theorem_args: MainTheoremArgs,
}



fn main() {
    let args = Args::parse();

    let file = &args.file;
    let output = &args.output;
    let theorem = args.main_theorem_args;

    create_and_check_proof(file, theorem, output);
}
