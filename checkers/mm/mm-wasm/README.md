## Prerequisites

Check [`setup.sh`](./setup.sh) for instructions on installing the dependencies.

## Building and running

Building and running the tool happen through the [checker](./checker) script
which, prior to going through the actual checking process, will check that
the required tools were made available by the steps described in `setup.sh`

```
$ ./checker --help
checker [options] command [args…]
Commands:
  build   build the checker; see the checker's README for build requirements
  test    run the checker unit tests (requires a `build` first)
  run     run the checker (requires a `build` first)
Options:
  -d,--dry-run    dont run commands, just show what would be executed
  -c,--certgen    generate ZK certificate (greatly increases runtime)
  -r,--release    build/use release version of code
  -h,--help       print this help message
```

For internal reasons, currenly the mm-wasm checker won't run if not passed
the `-r` flag.

## Results

### `tiny.mm`

Execution steps on the machine: 8857
Time elapsed for proving: 1m48s real (12m3s user, 65GB memory)
Time elapsed for verifying the receipt: 5.148s (user 3m24s, )

### `miu.mm`

Execution steps on the machine: 133527
Time elapsed for proving: 1m51s real (12m4s user, 69.5GB memory)
Time elapsed for verifying the receipt: 4.975s (user 3m25s )

### `big-unifier.mm`

Execution steps on the machine: 11798058
Time elapsed for proving: 17m19s real (1h48m50s user, 72GB memory)
Time elapsed for verifying the receipt: 8.152s (user 3m23s, 12 proofs )
