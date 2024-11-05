# Our experiment

This file contains information on the measurements that we have taken when running our Metamath (MM) proof checker
on different Metamath files in various zero-knowledge Virtual Machines (zkVMs).

The list of zkVMs that we are considering is the following one:
- [Risc0](https://github.com/risc0/risc0)
- [zkWASM](https://github.com/DelphinusLab/zkWasm)
- [Jolt](https://github.com/a16z/jolt)
- [Cairo](https://docs.cairo-lang.org/)
- [SP1](https://github.com/succinctlabs/sp1)
- [Lurk](https://github.com/argumentcomputer/lurk-beta)
- [Nexus](https://github.com/nexus-xyz/nexus-zkvm)

The implementations of our Metamath proof checker in each of the above zkVMs can be found in the mm-proofChecker 
folder. They each consist of a guest program which runs on the specific virtual machine and a host program which is our interface to
actually running the guest, providing input for it and processing its output.

Out of the seven zkVMs that we are considering only Risc0, zkWASM, SP1 and Cairo provide GPU support. Still, we were
only able to run Risc0 and zkWASM with GPU support. 


ZkWasm transfer-batch-1k-goal.mm 9500 tokens 20 min proof time



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
For the smallest file, hol_idi.mm, which consists of ... tokens, Nexus proving time is seconds.

Nexus: 
tiny 13 tokens, 531 s proof time, 1.15 verify time
162 tokens, 5028s proof time


ZkWasm transfer-batch-1k-goal.mm 9500 tokens 20 min proof time

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