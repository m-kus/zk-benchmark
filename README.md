# Goal

This file contains information on the measurements that we have taken when running our Metamath (MM) proof checker
on different Metamath files in various zero-knowledge Virtual Machines (zkVMs).

# Our experiment

The list of zkVMs that we are considering is the following one:
- [Risc0](https://github.com/risc0/risc0)
- [zkWASM](https://github.com/DelphinusLab/zkWasm)
- [Jolt](https://github.com/a16z/jolt)
- [Cairo](https://docs.cairo-lang.org/)
- [SP1](https://github.com/succinctlabs/sp1)
- [Lurk](https://github.com/argumentcomputer/lurk-beta)
- [Nexus](https://github.com/nexus-xyz/nexus-zkvm)

The implementations of our Metamath proof checker in each of the above zkVMs can be found in the mm-proofChecker 
folder. They each consist of a guest program which runs on the specific virtual machine and a host program which is our interface to actually running the guest, providing input for it and processing its output. The Metamath files that we are testing can be found in the mm-files folder.

Out of the seven zkVMs that we are considering only Risc0, zkWASM, SP1 and Cairo provide GPU support. Still, we were only able to run Risc0 and zkWASM with GPU support because of some internal setup issues. 




# How to run our tests 

## Docker set up 

[Insert instructions]

## Instructions to run all MM files with all zkVMs

[Insert instructions]

## Instructions to run a single MM file with a zkVM

[Insert instructions]

# Our results

We run our experiment on more than 1000 files with varying sizes, where the size of the metamath file is the number
of its containing symbols (tokens). 
For the smallest file, hol_idi.mm, which consists of ... tokens, Nexus proving time is 512 seconds.
[insert other info for zkvms that will not be shown in the table]


## Proof file size VS CPU proof time

[Insert graph]

## Proof file size VS GPU proof time

[Insert graph]

## Proof file size VS CPU verify time

[Insert graph]

## Proof file size VS GPU verify time

[Insert graph]

## Proof file size VS CPU total time

[Insert graph]

## Proof file size VS GPU total time

[Insert graph]

We selected nine representative files [how did we select them?] and choose to present their corresponding statistics.

[insert table for each file]

# Disclaimers
We believe there are several reasons why our code may be improved.
- some of the zkVMs that we are considering (e.g. Jolt, Nexus) are still under active development and our corresponding proof 
checker implementations could benefit from future improvements. 
- we are building the Cairo prover from an old [commit](https://github.com/lambdaclass/lambdaworks/tree/a591186e6c4dd53301b03b4ddd69369abe99f960/provers).
- some of the zkVMs (Cairo, Lurk) are using specialized languages which opens up potential for optimizations 
unique to their particular languages.

All the implementations could actually benefit from hand crafted optimizations, since the zkVM field is such an active research field. 
We are describing one of the optimizations that our team has worked on in the next section.

If you have any ideas for improvements or spot areas that could be optimized, don't hesitate to jump in. We welcome contributions! 

# One possible optimization
[talk about Brandon's optimization: what it is and how it improves]