Metamath checker running in Jolt.

Our Rust code is already `no_std` with `alloc`, so we don't need to
enable Jolt's support for `std`.

If the guest code panics the error message is just `GUEST PANIC`
rather than showing a panic message, and the following deserialization
error is just because the guest didn't output a complete result
(because it paniced).

Execution might also fail from exceeding memory, stack, or input size
limits, which are hardcoded in the `jolt::provable` attribute in
`guest/src/lib.rs`.
I don't know of a nice way to figure out how much stack or memory is
needed.

The reported `build_check_proof` time is input-independent per-program
setup that shouldn't need to be repeated every run, but Jolt currently
has no way of caching the result.

OUTDATED:
Of the files in `../metamath-files/theory` the largest I could check
in 32GB of RAM is `transfer-task-specific.mm`, which reported a transcript
size of ~100,000 steps.
The ~5000 token examples such as `disjointness-alt-lemma.mm`
and `transfer5000.mm` report transfer sizes over 1,000,000 steps and
ran out of memory trying to construct a proof.

# Jolt installation

Install jolt by running
```
cargo +nightly-2024-08-01 install --git https://github.com/a16z/jolt --force --bins jolt
jolt install-toolchain

(the ~400MB toolchain download is stored under `~/.jolt`)

Exact commits of dependencies taken from git repositories (rather than
published crates.io versions) can be found in the `Cargo.lock` file.
