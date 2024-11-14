# mmtool

MMTool is a tool for getting performance metrics w.r.t. metamath checking process.

## Executing

Example of running the tool

```
cargo run --bin mmtool -- ../../common/metamath-files/theory/proof-prelude.mm
```

This would produce an output of the form:

```
Reading metamath file ../../common/metamath-files/theory/proof-prelude.mm
Metamath file has 2550 lines.
Metamath file preparsed as 12577083 tokens.
Maximum id used 2304
Proof stats: total lemma size: 43920300
Proof stats: total claim size: 228465315
Proof stats: max stack depth: 438
Proof stats: max stack size: 135068

Proof stats: Propositions count: 692
Proof stats: Constants count: 101
Proof stats: Variables count: 34
Proof stats: Variable Hypotheses count: 2973
Proof stats: Logical Hypotheses count: 1076
Proof stats: Disjoint vars pairs count: 158
Proof stats: Proof steps count: 12542678
```

To collect the first batch of `Proof stats` the checker needs to perform
proof checking. If that is not desired then the `-s`/`--skip-proofs` option
can be passed to the tool to signal that.

## Generating a report

One can use the `mmtool_report.py` script to generate a Markdown report over running
the `mmtool` on all `.mm` files in a directory (by default `../common/metamath-files`).

For example, [report.md](report.md) was generating using the following command:

```
poetry run report --all-to-axiom --guest-with-to-axiom >report.md
```

which in addition to reporting the guest cycles for a normal check of each file, it also
reports guest cycles when all probable statements are turned into axioms.

### Usage

```
$ poetry run report --help
usage: mmtool report [-h] [--dir DIR | --file FILE] [--tag] [--skip-guest | --baseline BASELINE | --guest-with-to-axiom] [--to-axiom [SYMBOL ...] | --all-to-axiom] [--update_performance] [--include [INCLUDE ...] | --exclude [EXCLUDE ...]]

Command-line tool for profiling the RiscZero implementation of the metamath checker

options:
  -h, --help            show this help message and exit
  --dir DIR             The path of the directory containing files to be checked
  --file FILE           The path of the metamath file to be checked
  --tag                 Tag checked files with the result of the report
  --skip-guest          Whether to skip running the guest (and computing guest cycles)
  --baseline BASELINE   The path of the executable to be used as a baseline
  --guest-with-to-axiom
                        also measure guest cycles when some proofs are converted to axioms
  --to-axiom [SYMBOL ...]
                        override proof types to skip for --guest-with-to-axiom
  --all-to-axiom        turn all statements to axioms for --guest-with-to-axiom
  --update_performance  Update performance report file
  --include [INCLUDE ...]
                        Specify which metrics should be included.
  --exclude [EXCLUDE ...]
                        Specify which metrics should be excluded.
```

Notes:

- If no directory (using the `--dir` option) nor file (using the `--file` option) is provided,
  then the `--dir` option will be assumed and the `../..` path relative to this directory would be used.

- If the `--tag` option is used the tool will attempt to identify and
  replace existing tags.

- If the `--baseline` option is used, the guest cycles of the baseline program will be reported in a new column
  `BaseGuestCycles` and another column, `PercentGuestCycles` reporting the percent of the current `GuestCycles`
  against the `BaseGuestCycles` will be added to the report.

- If the `--skip-guest` option is provided, this would make the `GuestCycles` column disappear.

- The `--update_performance` option will update the file at `../performance_over_time.csv` relative to this directory.
