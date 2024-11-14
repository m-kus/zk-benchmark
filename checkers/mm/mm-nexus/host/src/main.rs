use std::io::{self, Write};
use std::time::Instant;
use std::error::Error;

use nexus_sdk::{
    compile::CompileOpts, nova::seq::{Nova, PP}, Local, Parameters, Prover, Verifiable, Viewable
};

use common::{Output, Input};
use mmlib_host::{LoadGuestTimer, PreprocessingTimer, ProveTimer, SetupTimer, Timer, TotalTimer, VerifyTimer};
use mmlib_host::{compute_hints, prepare_mm_file, MainTheoremArgs};

use clap::Parser;

const PACKAGE: &str = "mm-nexus-guest";
const TARGET_PATH: &str = concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../../.build/checker/riscv32i-unknown-none-elf/release"
);

#[derive(Parser)]
#[command(about = "Generate a Nexus ZK certificate for checking a MetaMath proof")]
#[command(version, arg_required_else_help = true, long_about = None)]
struct Args {
    /// Path to the MetaMath file containing the proof to be verified
    file: String,

    #[command(flatten)]
    main_theorem_args: MainTheoremArgs,

    /// Whether to only run the program (skipping proving)
    #[arg(long)]
    only_run: bool,

    /// Whether the load guest from ELF binary
    /// (compile with `cargo build --release --target riscv32i-unknown-none-elf` in the `guest` directory
    #[arg(long)]
    load_from_elf: bool,
}


fn main() {
    let total_timer = TotalTimer::start();
    let args = Args::parse();

    check_file(&args.file, &args.main_theorem_args, args.only_run, args.load_from_elf);
    println!("{}", total_timer.stop());
}

fn check_file(file: &str, main_theorem: &MainTheoremArgs, only_run: bool, load_from_elf: bool) {
    let preprocessing_timer = PreprocessingTimer::start();
    let (ident_table, axiom_file_tokens) = prepare_mm_file(file);
    let (max_subst_size, last_prop) = compute_hints(&axiom_file_tokens);
    let target_theorem = main_theorem.process(&ident_table, last_prop);
    let tokens = axiom_file_tokens;
    println!("{}", preprocessing_timer.stop());
    let load_guest_timer = LoadGuestTimer::start();
    let prover = get_prover(load_from_elf);
    println!("{}", load_guest_timer.stop());
    let output: Result<Vec<u16>, Box<dyn Error>> = if only_run {
        print!("Executing the checker in the vm...");
        io::stdout().flush().unwrap();
        let timer = Instant::now();
        let view = prover.run_with_input::<Input>(&(tokens, max_subst_size, target_theorem)).expect("failed to run program");
        let output = view.output::<Output>();
        println!("done. Time elapsed: {:.2?}", timer.elapsed());

        println!(">>>>> Logging\n{}<<<<<", view.logs().join("\n"));
        output.map_err(|e| e.into())
    } else {
        println!("Setting up Nova public parameters.");
        let setup_timer = SetupTimer::start();
        let pp: PP = PP::generate_for_testing().expect("failed to generate parameters");
        println!("{}", setup_timer.stop());

        println!("Proving execution of vm.");
        let prove_timer = ProveTimer::start();
        let proof = prover
            .prove_with_input::<Input>(&pp, &(tokens, max_subst_size, target_theorem))
            .expect("failed to prove program");
        let output = proof
                .output::<Output>();
        println!("{}", prove_timer.stop());

        println!("Verifying execution.");
        let verify_timer = VerifyTimer::start();
        proof.verify(&pp).expect("failed to verify proof");
        println!("{}", verify_timer.stop());

        println!(">>>>> Logging\n{}<<<<<", proof.logs().join("\n"));
        output.map_err(|e| e.into())
    };

    MainTheoremArgs::display_target_stmt(target_theorem, output, &ident_table);
}

fn get_prover(load_from_elf: bool) -> Nova {
    let elf_path = std::path::Path::new(TARGET_PATH).join(PACKAGE);

    let prover: Nova<Local> =
        if load_from_elf {
            println!("Loading guest from ELF.");
            Nova::new_from_file(&elf_path).expect("failed to load guest ELF")
        } else {
            println!("Compiling guest program.");
            let mut opts = CompileOpts::new(PACKAGE);
            opts.set_memlimit(8);
            // use an 8mb memory
            Nova::compile(&opts).expect("failed to compile guest program")
        };
    // new_from_file(&path).expect("failed to load program");
    prover
}

#[cfg(test)]
mod test {
    use super::*;

    fn run_test(file: &str) {
        check_file(file, &MainTheoremArgs::default(), true, false);
    }

    #[test]
    pub fn test_simple_compressed() {
        run_test("../../common/metamath-files/theory/simple-compressed.mm")
    }

    #[test]
    pub fn test_simple() {
        run_test("../../common/metamath-files/theory/simple.mm")
    }

    #[test]
    pub fn test_impreflex_compressed() {
        run_test("../../common/metamath-files/theory/impreflex-compressed-goal.mm")
    }
}
