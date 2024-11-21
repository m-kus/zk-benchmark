Proof Checkers
==============

This directory contains all the π² proof checkers[^1]. There is a
subdirectory for each proof format (`aml/`, `mm/`, etc.) and, underneath
each of those, a further subdirectory for the particular platform on which
a check for that format runs (`aml/aml-risc0/`, `mm/mm-risc0/`, etc.). The
duplication of the proof format name in the sub-sub-directory is for
identification convience; it both preserves the format should that
directory alone be copied somewhere and also provides an easy way to get a
"tag" for that specific checker as it's just the directory name.

General information about each particular checker is found in the
[`checker-list.md`](./checker-list.md).


Checker API
-----------

All checkers use a common API for builds, unit tests and runing the
checker. This is a Bash script called `checker` in each checker directory
(`checker/FMT/FMT-BACKEND/`). These generally have minimal code in them,
relying on `checker/common/checker-api.bash` to do most of the work. See
that file for detailed information, including how to write a new `checker`
script (though you should use the existing ones as a reference). Note that
`checker test` and `checker run` can assume that `checker build` has already
been run.

Run any checker script with `-h` or `--help` for usage information.

Running `./Test tchecker` from the top level will do some basic tests to
confirm the interface of all checkers that implement the API (i.e., all
checkers that have a `checker/*/*/checker` file present). For each one we
call `build`, then `test` and finally `run` on a format-specific set of
test files.

These test files are under `checker/*/runtest` with a subdirectory for each
`checker run` that should be executed. All (non-dot) files in the
subdirectory will be passed to the `checker run` command, sorted in the
standard order used by the `*` shell glob. An example sequence of runs
might be:

    mm/mm-cairo/checker run mm/runtest/anatomy/*
    mm/mm-risc0/checker run mm/runtest/anatomy/*
    taml/taml-k/checker run taml/runtest/pretty/*
    taml/taml-k/checker run taml/runtest/taml/*

(Note that `Test tchecker` does not use these exact paths; it runs `checker
run` from a different working directory to ensure that `checker run`
accepts relative paths properly, regardless of where it is run from.)
