#!/usr/bin/zsh

PROVE_CMD=""

if [[ "$1" == "-p" ]] ; then
    READ_DB_CMD="(mm!read `cat $2`)\n"
    PROVE_CMD="!(prove)" ;
else
    READ_DB_CMD="(mm!read `cat $1`)\n"
fi

echo "$READ_DB_CMD $PROVE_CMD" | lurk --preload src/mm-prelude.lurk # 2>&1 >> $2
