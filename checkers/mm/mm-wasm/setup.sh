#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}/../../../.. # Go to the parent of the pi2 root dir
cargo install wasm-pack

# clone and build zkwasm
git clone --recurse-submodules https://github.com/DelphinusLab/zkwasm
cd zkwasm
patch -p1 < ../pi2/checker/mm/mm-wasm/0001-expand-image-capacity-for-metamath.patch
cd crates/cli
cargo install --path . --features continuation --features cuda # exclude CUDA if not available on the system
retVal=$?
if [ $retVal -eq 0 ]; then
    cd ../../..
    rm -rf zkwasm
fi

# generate some public parameters
time zkwasm-cli --params ${SCRIPT_DIR}/mm-params metamath setup
