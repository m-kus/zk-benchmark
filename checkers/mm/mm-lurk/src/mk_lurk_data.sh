#!/usr/bin/zsh
python3 src/mk_lurk_data.py $1 .mm-lurk/tmp > lurk_data/$1:t:r.lurk
