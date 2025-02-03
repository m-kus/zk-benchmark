use mmlib_host::{read_mm_file, MainTheoremArgs, TokenCode};
use mmlib_host::{ProveTimer, Timer, TotalTimer, VerifyTimer};
use stwo_cairo_serialize::CairoSerialize;
use starknet_ff::FieldElement;
use scarb_metadata::ScarbCommand;
use std::fs;
use std::path::{Path, PathBuf};
use std::env;

use clap::Parser;

// Include the built Cairo executable
// const CAIRO_PROGRAM: &[u8] = include_bytes!(std::env!("CAIRO_PROGRAM_PATH"));

#[derive(Parser)]
#[command(about = "Generate a Cairo ZK certificate for checking a MetaMath proof")]
#[command(version, arg_required_else_help = true, long_about = None)]
struct Args {
    /// Path to the MetaMath file containing the proof to be verified
    file: String,

    /// Generate zk certificate
    #[arg(long = "cert-gen", default_value = "false")]
    certgen: bool,

    #[command(flatten)]
    main_theorem_args: MainTheoremArgs,
}
struct TokenVec(pub Vec<TokenCode>);

impl CairoSerialize for TokenVec {
    fn serialize(&self, output: &mut Vec<FieldElement>) {
        output.push(FieldElement::from(self.0.len()));
        for token in self.0.iter() {
            output.push(FieldElement::from(*token));
        }
    }
}

fn find_latest_execution(base_path: &Path) -> Option<PathBuf> {
    let execute_dir = base_path.join("target").join("execute").join("mm_cairo");
    
    fs::read_dir(&execute_dir).ok()?
        .filter_map(|entry| entry.ok())
        .filter(|entry| {
            entry.file_name()
                .to_str()
                .map(|s| s.starts_with("execution"))
                .unwrap_or(false)
        })
        .max_by_key(|entry| {
            entry.file_name()
                .to_str()
                .and_then(|s| s.trim_start_matches("execution").parse::<u32>().ok())
                .unwrap_or(0)
        })
        .map(|entry| entry.path())
}

fn main() {
    let args = Args::parse();

    let total_timer = TotalTimer::start();

    if args.main_theorem_args.main_theorem.is_some() || args.main_theorem_args.infer_main_theorem {
        println!("Warning: target theorem is specified but selecting a theorem is not currently supported. All proofs will be checked.");
    }

    let (_ident_table, res) = read_mm_file(&args.file);
    let tokens = TokenVec(res);

    let mut serialized: Vec<starknet_ff::FieldElement> = Vec::new();
    CairoSerialize::serialize(&tokens, &mut serialized);

    let execute_args: String = serialized
        .into_iter()
        .map(|felt| format!("\"0x{:x}\"", felt))
        .collect::<Vec<String>>()
        .join(",");
    std::fs::write("target/execute_args.json", format!("[{execute_args}]")).expect("Failed to write to file");

    if args.certgen {
        println!("Generate the proof");
        let prove_timer = ProveTimer::start();

        ScarbCommand::new()
            .arg("prove")
            .arg("--execute")
            .arg("--no-build")
            .arg("--print-resource-usage")
            .arg("--arguments-file")
            .arg("target/execute_args.json")
            .env("SCARB_PACKAGES_FILTER", "mm_cairo")
            .run()
            .expect("Failed to prove");
        println!("Successfully generated proof!");
        println!("{}", prove_timer.stop());

        // Find the latest execution folder and construct proof path
        let current_dir = env::current_dir().expect("Failed to get current directory");
        let latest_execution = find_latest_execution(&current_dir)
            .expect("Failed to find latest execution directory");
        let proof_path = latest_execution.join("proof").join("proof.json");

        let verify_timer = VerifyTimer::start();
        ScarbCommand::new()
            .arg("verify")
            .arg("--proof-file")
            .arg(proof_path)
            .run()
            .expect("Failed to verify");
        println!("Successfully verified proof!");
        println!("{}", verify_timer.stop());
    } else {
        ScarbCommand::new()
            .arg("execute")
            .arg("--no-build")
            .arg("--print-resource-usage")
            .arg("--arguments-file")
            .arg("target/execute_args.json")
            .env("SCARB_PACKAGES_FILTER", "mm_cairo")
            .run()
            .expect("Failed to execute");
    }

    println!("{}", total_timer.stop());
}
