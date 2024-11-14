use clap::Parser;

use mmlib::MMHints;
use mmlib::SliceTokens;
use mmlib::MM;
use mmlib::DynamicPerfStatsViewer;
use mmlib::StaticPerfStatsViewer;

use mmlib_host::prepare_mm_file;
use mmlib_host::ToAxiomArgs;

use mmtokens::TokenCode;
use mmtokens::IdentTable;
#[allow(unused_imports)]
use mmtokens::show_symbol_tokens;

#[derive(Parser)]
#[command(about = "analyze a metamath file")]
#[command(version, arg_required_else_help = true, long_about = None)]
struct Args {
    /// Don't verify proofs
    #[arg(short, long, action = clap::ArgAction::SetTrue)]
    skip_proofs: bool,

    #[command(flatten)]
    to_axiom_args: ToAxiomArgs,

    /// Print the file instead of checking
    #[arg(long, action = clap::ArgAction::SetTrue)]
    show: bool,

    file: String
}

/// This function runs the proof creation and checking pipeline for a given metamath file.
fn create_and_check_proof(args: &Args) {
    // Initialize tracing. In order to view logs, run `RUST_LOG=info cargo run`
    tracing_subscriber::fmt()
        .with_env_filter(tracing_subscriber::filter::EnvFilter::from_default_env())
        .init();

    let (ident_table, tokens) = prepare_mm_file(&args.file);

    let tokens = args.to_axiom_args.process(&ident_table, tokens);

    let tokens_ref: &'static [TokenCode] = tokens.leak();

    // if skip_proofs is true then set begin_label to maximum possible token value
    // ensures that it won't be found to enable checking of theorem proofs.
    let begin_label = if args.skip_proofs {Some(TokenCode::MAX)} else { None };
    let mut mm = MM::new(begin_label, None, MMHints::default());

    let ok = mm.read(&mut SliceTokens::new(tokens_ref));
    if !ok {
        panic!("Proof failed")
    }

    if !args.skip_proofs {
        // the dynamic report only makes sense if proof checking is enabled
        println!("{}", mm.mm_perf.get_dynamic_report());
    }
    println!("{}", mm.mm_perf.get_static_report());
    println!("Proof info: Last checked proposition: {}",
        mm.mm_perf.get_last_prop().map(|l| ident_table.label_to_text(l).unwrap()).unwrap_or("$( None )"));
}

fn untokenize<P: AsRef<std::path::Path>>(file: P) {
    let (ident_table, tokens) = mmlib_host::bytes_to_tokenized(std::fs::read(file).unwrap());
    println!("{}", show_symbol_tokens(&ident_table, &tokens));
}

fn main() {
    let args = Args::parse();
    if args.show {
        untokenize(&args.file);
    } else {
        create_and_check_proof(&args);
    }
}
