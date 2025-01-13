#!/bin/bash

# Specific ordered list of .mm files
mm_files=(
    "mm-files/hol_idi.mm"
    "mm-files/hol_wov.mm"
    "mm-files/hol_ax13.mm"
    "mm-files/hol_cbvf.mm"
    "mm-files/45.erc20transfer_success_tm_0_6.mm"
    "mm-files/25.erc20transfer_success_tm_0_9.mm"
    #"mm-files/3.erc20transfer_success_tm_0.mm"
    #"mm-files/9.erc20transfer_success.mm"
)

# Initialize arrays to store results
platinum_results=()
stwo_results=()
sp1_results=()
risc0_results=()

# CSV output file
csv_file="benchmark_results.csv"

# Function to round a number to 2 decimal places
round_number() {
    # Remove any leading/trailing whitespace and convert to decimal format
    local num=$(echo "$1" | tr -d ' ' | awk '{printf "%.2f", $1}')
    echo "$num"
}

# Function to run benchmark and extract time for Platinum
run_benchmark_platinum() {
    local cmd="$1"
    local output
    if ! output=$(eval "$cmd" 2>&1); then
        echo "err"
    else
        local time
        time=$(echo "$output" | grep "Time spent in proving:" | sed -E 's/Time spent in proving: ([0-9.]+)s/\1/')
        if [ -n "$time" ]; then
            round_number "$time"
        else
            echo "err"
        fi
    fi
}

# Function to run benchmark and extract time for Stwo
run_benchmark_stwo() {
    local cmd="$1"
    local output
    if ! output=$(eval "$cmd" 2>&1); then
        echo "err"
    else
        # First remove all escape sequences, then extract the time
        echo "$output" | sed 's/\x1b\[[0-9;]*[a-zA-Z]//g' | grep "adapted_stwo" | grep "close" | tail -n 1 | sed -E 's/.*time.busy=([0-9.]+)s.*/\1/'
    fi
}

# Function to run benchmark and extract time for SP1/RISC0
run_benchmark_sp1_risc0() {
    local cmd="$1"
    local output
    if ! output=$(eval "$cmd" 2>&1); then
        echo "err"
    else
        echo "$output" | grep "Time elapsed for proving:" | tail -n 1 | sed -E 's/.*Time elapsed for proving: ([0-9.]+)s.*/\1/'
    fi
}

echo "Running benchmarks..."

# Build all projects first
# echo "Building Cairo project..."
# cd checkers/mm/mm-cairo || exit 1
# make build >/dev/null 2>&1
# cd ../../..

# echo "Building SP1 project..."
# cd checkers/mm/mm-sp1 || exit 1
# make build >/dev/null 2>&1
# cd ../../..

# echo "Building RISC0 project..."
# cd checkers/mm/mm-risc0 || exit 1
# make build >/dev/null 2>&1
# cd ../../..

# Run benchmarks for each file
i=0
for mm_file in "${mm_files[@]}"; do
    echo "Running benchmarks for file: $mm_file"
    
    # Cairo benchmarks (Platinum and Stwo)
    cd checkers/mm/mm-cairo || exit 1
    make args MM_FILE="../../../$mm_file" >/dev/null 2>&1
    make artifacts >/dev/null 2>&1
    
    if [ $i -lt 4 ]; then
        platinum_results[i]=$(run_benchmark_platinum "make prove-platinum")
    else
        platinum_results[i]="-"
    fi
    
    stwo_results[i]=$(run_benchmark_stwo "make prove-stwo")
    cd ../../..

    # SP1 benchmarks
    cd checkers/mm/mm-sp1 || exit 1
    sp1_results[i]=$(run_benchmark_sp1_risc0 "make prove MM_FILE=../../../$mm_file")
    cd ../../..

    # RISC0 benchmarks
    cd checkers/mm/mm-risc0 || exit 1
    risc0_results[i]=$(run_benchmark_sp1_risc0 "make prove MM_FILE=../../../$mm_file")
    cd ../../..

    i=$((i+1))
done

# Print ASCII table
printf "+------------------------------------------+------------------+---------------+----------+----------+\n"
printf "| File                                     | Platinum (Cairo) | Stwo (Cairo)  | SP1      | RISC0    |\n"
printf "+------------------------------------------+------------------+---------------+----------+----------+\n"

# Write CSV header
echo "File,Platinum (Cairo),Stwo (Cairo),SP1,RISC0" > "$csv_file"

for i in "${!mm_files[@]}"; do
    # Get just the filename without path
    filename=$(basename "${mm_files[i]}")
    printf "| %-40s | %-16s | %-13s | %-8s | %-8s |\n" \
        "$filename" \
        "${platinum_results[i]:-err}" \
        "${stwo_results[i]:-err}" \
        "${sp1_results[i]:-err}" \
        "${risc0_results[i]:-err}"
    
    # Write to CSV
    echo "$filename,${platinum_results[i]:-err},${stwo_results[i]:-err},${sp1_results[i]:-err},${risc0_results[i]:-err}" >> "$csv_file"
done

printf "+------------------------------------------+------------------+---------------+----------+----------+\n"

echo "Results have been saved to $csv_file"