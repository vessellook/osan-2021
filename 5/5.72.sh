#!/bin/bash
[ $# = 1 ] || exit 1

symbols="$1"

for name in $(ls)
do
    has=false
    for ((i=0; i<${#symbols};i++))
    do
        symbol="${symbols:$i:1}"
        [[ $name = *$symbol* ]] && has=true
    done
    [ "$has" = true ] && wc -l "$name"
done

