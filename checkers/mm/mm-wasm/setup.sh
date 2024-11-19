#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PI2_BASE_DIR=$SCRIPT_DIR/../../..

cd ${PI2_BASE_DIR}/.. # Go to the parent of the pi2 root dir
cargo install wasm-pack
cargo install wasm-opt

# clone and build zkwasm
git clone --recurse-submodules https://github.com/DelphinusLab/zkwasm
cd zkwasm
patch -p1 < ${SCRIPT_DIR}/0001-expand-image-capacity-for-metamath.patch
patch -p1 < ${SCRIPT_DIR}/0002-pi2-specific-timing-information.patch
cargo build --release --path . --features continuation --features perf --features profile
retVal=$?
if [ $retVal -eq 0 ]; then
    cp target/release/zkwasm-cli ~/.cargo/bin
    cd ..
    rm -rf zkwasm
    # generate some public parameters
    time zkwasm-cli --params ${SCRIPT_DIR}/mm-params metamath setup
else
    >&2 echo "Error building zkWasm"
fi
