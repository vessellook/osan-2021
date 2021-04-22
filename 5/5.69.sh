#!/bin/bash
symbols='ab.'


for string in $(ls -1)
do
    for ((i=0; i<${#symbols};i++))
    do
        symbol="${symbols:$i:1}"
        count="$(echo $string | tr -cd "$symbol" | wc -m)"
        if [ "$count" != 1 ]
        then
            continue 2
        fi
    done

    echo -n $string

    for ((i=0; i<${#symbols};i++))
    do
        symbol="${symbols:$i:1}"
        echo -n " "$(echo $string | sed "s/$symbol.*$//" | wc -m)
    done
    echo .
done
