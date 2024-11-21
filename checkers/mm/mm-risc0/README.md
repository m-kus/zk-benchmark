mm-risc0: π² Metamath RISC0 Proof Checker and ZK Cert Generator
===============================================================

### Overview

There are two sets of code here: `host/` compiled for the system hosting
the RISC-V VM, and `guest/` which is compiled for the RISC-V CPU itself.
The host runs a Metamath proof checker in the guest.

- The metamath file is tokenized on the host to avoid lexing on the guest.
- `methods/guest/` is the crate built for RISC-V
- `mmtokens`: reading/parsing the tokenized proof. Used in host+guest.
- `mmlib`: what you need to represent a Metamath proof. Here used only in
  the RISC-V VM, but also used elsewhere in π² code, including in a
  native/non-ZK tool for collecting proof statistics.

### Requirements

This requires some basic build tools, Rust/Cargo (most easily
installed via [rustup]), and the risc0 toolchain. A typical
install process is:

    sudo apt install build-essential
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    cargo install cargo-binstall
    cargo binstall 'cargo-risczero@1.0.5'
    cargo risczero install

### Running

Please see the [PARTNER-README](../../PARTNER-README.md) file for general
information about the `checker` script in this directory, or just run
`./checker --help` for usage information.

For this checker, `checker run` takes two arguments, the path to a `.mm`
file with the metamath code and a target. E.g.

    ./checker run  ../common/metamath-files/metamath-test/anatomy.mm  wnew


Addtional Information
---------------------

This comes from from the [RISC Zero Rust Starter Template][rz-template]
in the official [`risc0`] repository.

### Executing the project locally in development mode

During development, faster iteration upon code changes can be achieved by
leveraging [dev-mode], we strongly suggest activating it during your early
development phase. Furthermore, you might want to get insights into the
execution statistics of your project, and this can be achieved by
specifying the environment variable `RUST_LOG="[executor]=info"` before
running your project.

Put together, the command to run your project in development mode while
getting execution statistics is:

    RUST_LOG="[executor]=info" RISC0_DEV_MODE=1 cargo run

## Directory Structure

It is possible to organize the files for these components in various ways.
However, in this starter template we use a standard directory structure for zkVM
applications, which we think is a good starting point for your applications.

    project_name
    ├── Cargo.toml
    ├── host
    │   ├── Cargo.toml
    │   └── src
    │       └── main.rs                    <-- [Host code goes here]
    └── methods
        ├── Cargo.toml
        ├── build.rs
        ├── guest
        │   ├── Cargo.toml
        │   └── src
        │       └── method_name.rs         <-- [Guest code goes here]
        └── src
            └── lib.rs

<!-------------------------------------------------------------------->
[`risc0`]: https://www.github.com/risc0/risc0
[dev-mode]: https://dev.risczero.com/api/generating-proofs/dev-mode
[rustup]: https://rustup.rs
[rz-template]: https://github.com/risc0/risc0/tree/main/risc0/cargo-risczero/templates/rust-starter
