#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

script_dir=$(dirname "$(realpath $0)")

check_proof() {
  echo -n "Checking $1: "
  $script_dir/../mm-lurk.sh $script_dir/../../common/metamath-files/$1 lurk_data $2 2>/dev/null | grep 'Verification sucessful' &>/dev/null && echo -e "${GREEN}Passed${ENDCOLOR}" || (echo -e "${RED}Failed${ENDCOLOR}"; exit 1)
}
check_proof_fails() {
  echo -n "Checking $1 (negative test): "
  $script_dir/../mm-lurk.sh $script_dir/../../common/metamath-files/$1 lurk_data $2 2>/dev/null | grep ':error' &>/dev/null && echo -e "${GREEN}Passed${ENDCOLOR}" || (echo -e "${RED}Failed${ENDCOLOR}"; exit 1)
}

   check_proof "metamath-test/anatomy.mm" "wnew" \
&& check_proof_fails "metamath-test/anatomy-bad1.mm" "wnew" \
&& check_proof_fails "metamath-test/anatomy-bad2.mm" "wnew" \
&& check_proof_fails "metamath-test/anatomy-bad3.mm" "wnew" \
&& check_proof "metamath-test/demo0.mm" "th@ONE" \
&& check_proof_fails "metamath-test/demo0-bad1.mm" "th@ONE" \
&& check_proof "metamath-test/miu.mm" "theorem@ONE" \
&& check_proof "metamath-test/tiny.mm" "thm" \
&& check_proof "theory/simple.mm" "th@ONE" \
&& check_proof "theory/simple-compressed.mm" "th@ONE" \
&& check_proof_fails "theory/simple-broken.mm" "th@ONE" \
&& check_proof "theory/impreflex.mm" "imp-reflexivity" \
&& check_proof "theory/impreflex-compressed.mm" "imp-reflexivity" \
&& check_proof "theory/impreflex-compressed-goal.mm" "imp-reflexivity" \
&& check_proof "theory/transfer-task-specific.mm" "goal"
