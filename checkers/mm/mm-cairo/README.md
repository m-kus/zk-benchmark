Cairo Metamath proof checker
============================

Installing Cairo
----------------

Install `scarb` (the Cairo equivalent to `cargo`):

```
# curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh
```

Checking Metamath proofs
------------------------

Run proofs with:

```
# ./checker run [metamath file]
```

Running tests
-------------

To execute all tests:

```
# scarb test
```

To create new tests, tokenize the proof you are trying to test manually and add the array inline in the same
format as the other tests in `src/test.cairo`.

The tests in `src/test.cairo` which are disabled, are too long to be handled by the testing system. All of
them currently pass when run with `scarb cairo-run --available-gas 100000000000 [file]`, except for
`transfer-largest-slice.mm`, which is so long that it doesn't work with either method, so the checker needs a
new/better way to handle inputting of larger proofs.

Generating ZK certificates / profiling ZK proving
-------------------------------------------------

Requires the lambdaworks platinum cairo prover to be installed separately.

```
# git clone https://github.com/lambdaclass/lambdaworks.git
# cd lambdaworks
# git checkout a591186e6c4dd53301b03b4ddd69369abe99f960
# cd provers/cairo
# cargo install --features=cli,instruments,parallel --path .
# platinum-prover -V
```

Then the same checker script can handle generating the rest of the steps for you:
```
./checker -c run [metamath file]
```

Note that this is not currently well optimized for large metamath files and will run out of RAM for nontrivial
examples.
