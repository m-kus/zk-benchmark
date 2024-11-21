use mmlib_host::{PreprocessingTimer, ProveTimer, SetupTimer, Timer, TotalTimer, VerifyTimer};
use mmlib_host::{MainTheoremArgs, prepare_mm_file, compute_hints};
use std::error::Error;
use std::fmt;

use clap::Parser;

#[derive(Parser)]
#[command(about = "Generate a Jolt ZK certificate for checking a MetaMath proof")]
#[command(version, arg_required_else_help = true, long_about = None)]
struct Args {
    /// Path to the MetaMath file containing the proof to be verified
    file: String,

    #[command(flatten)]
    main_theorem_args: MainTheoremArgs,
}

type JoltProof = jolt::JoltHyperKZGProof;

#[derive(Debug, Clone)]
struct NoTheoremError;

impl fmt::Display for NoTheoremError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Cannot find theorem")
    }
}

impl Error for NoTheoremError {}

pub fn prove_and_verify_check_proof(
    prove_check_proof: impl Fn(Vec<u16>, u32, Option<u16>) -> (Option<Vec<u16>>, JoltProof),
    verify_check_proof: impl Fn(JoltProof) -> bool,
    file_name: &str,
    target_args: &MainTheoremArgs,
) {
    let preprocessing_timer = PreprocessingTimer::start();
    let (ident_table, axiom_file_tokens) = prepare_mm_file(file_name);
    let (max_subst_size, last_prop) = compute_hints(&axiom_file_tokens);
    let target_theorem = target_args.process(&ident_table, last_prop);
    let tokens = axiom_file_tokens;
    println!("{}", preprocessing_timer.stop());

    let prove_timer = ProveTimer::start();
    let (output, proof) = prove_check_proof(tokens, max_subst_size, target_theorem);
    println!("{}", prove_timer.stop());

    MainTheoremArgs::display_target_stmt(target_theorem, output.ok_or(NoTheoremError.into()), &ident_table);
    println!(
        "Public input size: {}, output size: {}",
        proof.proof.program_io.inputs.len(),
        proof.proof.program_io.outputs.len()
    );
    // println!("Total proof size: {}", proof.size().unwrap());

    let verify_timer = VerifyTimer::start();
    let is_valid = verify_check_proof(proof);
    println!("{}", verify_timer.stop());

    println!("valid: {}", is_valid);
}

pub fn main() {
    let total_timer = TotalTimer::start();
    let args = Args::parse();

    let setup_timer = SetupTimer::start();
    let (prove_check_proof, verify_check_proof) = guest::build_check_proof();
    println!("{}", setup_timer.stop());

    prove_and_verify_check_proof(
        prove_check_proof,
        verify_check_proof,
        &args.file,
        &args.main_theorem_args,
    );
    println!("{}", total_timer.stop());
}

#[cfg(test)]
mod test {
    use super::*;
    // trying to reuse the setup in guest::build_FUN between test cases, we
    // have a problem because the returned closusres are not (known to be)
    // Sync or even Send, so they cannot be shared between threads.
    // To store the results in a static for reuse even within a single thread
    // requires `thread_local`.
    // But even if we are willing to do additional setup work between threads,
    // the build process also fails if we try to run multiple calls concurrently
    // because it creates files in a fixed non-fresh directory name under /tmp
    // we use a Mutex to prevent these preprocessing failures.
    // so test-threads=1 is configured in ../.config/cargo.toml
    use mmlib_host::TokenCode;
    struct ProverSetup {
        prove: Box<dyn Fn(Vec<TokenCode>,u32,Option<TokenCode>)->(Option<Vec<TokenCode>>,JoltProof) + Sync + Send>,
        verify: Box<dyn Fn(JoltProof)->bool + Sync + Send>,
    }
    use std::sync::LazyLock;
    impl ProverSetup {
        fn new() -> Self {
            let (prove,verify) = guest::build_check_proof();
            ProverSetup{prove: Box::new(prove), verify: Box::new(verify)}
        }
    }
    static SETUP: LazyLock<ProverSetup> = LazyLock::new(|| ProverSetup::new());

    fn run_test(file: &str) {
        let p = SETUP.prove.as_ref();
        let v = SETUP.verify.as_ref();
        prove_and_verify_check_proof(p,v, file, &MainTheoremArgs::default())
    }

    #[test]
    pub fn test_simple_compressed() {
        run_test("../common/metamath-files/theory/simple-compressed.mm")
    }

    #[test]
    pub fn test_simple() {
        run_test("../common/metamath-files/theory/simple.mm")
    }

    #[test]
    pub fn test_impreflex_compressed() {
        run_test("../common/metamath-files/theory/impreflex-compressed-goal.mm")
    }
}
