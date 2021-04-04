#!/bin/bash

max=

for arg
do
    if [[ $arg =~ [+-]?[0-9]+ ]]
    then
        if [[ -z $max || $max -lt $arg ]]
        then
            max="$arg"
        fi
    fi
done
echo "$max"

