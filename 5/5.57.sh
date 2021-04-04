#!/bin/bash

max=

while read num
do
    if [[ $num =~ [+-]?[0-9]+ ]]
    then
        if [[ -z $max || $max -lt $num ]]
        then
            max="$num"
        fi
    fi
done
echo "$max"

