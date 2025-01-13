install-platinum:
	cargo install --features=cli,instruments,parallel --git https://github.com/lambdaclass/lambdaworks --rev a591186e6c4dd53301b03b4ddd69369abe99f960 cairo-platinum-prover

install-stwo:
	RUSTFLAGS="-C target-cpu=native -C opt-level=3" cargo install --git https://github.com/starkware-libs/stwo-cairo adapted_stwo

install-stwo-ex:
	RUSTFLAGS="-C target-cpu=native -C opt-level=3" cargo install --git https://github.com/m-kus/stwo-cairo --rev f464e1e8accaa285c01bae9b77e0c4a980a6da0a adapted_stwo_ex

build:
	scarb --profile cairo1-run build
	cargo build --release

args:
	./target/release/mm-cairo --args-file target/args.txt $(MM_FILE)

artifacts:
	cairo1-run target/cairo1-run/mm_cairo.sierra.json --layout recursive --args_file target/args.txt --proof_mode --air_public_input target/public_input.json --air_private_input target/private_input.json --trace_file target/trace --memory_file target/memory

params:
	python scripts/stone_params.py --desired-degree-bound ${BOUND} --last-layer-degree-bound 64 > target/prover_params.json

prove-stone:
	time cpu_air_prover --parameter_file target/prover_params.json --prover_config_file prover_config.json --private_input_file target/private_input.json --public_input_file target/public_input.json --out_file target/stone_proof.json

prove-stwo:
	adapted_stwo --priv_json target/private_input.json --pub_json target/public_input.json --proof_path target/stwo_proof.json

prove-stwo-ex:
	adapted_stwo_ex --priv_json target/private_input.json --pub_json target/public_input.json --proof_path target/stwo_proof.json

prove-platinum:
	platinum-prover prove target/trace target/memory target/platinum_proof
