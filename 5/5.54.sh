#!/bin/bash

count="$1"

! [[ $count =~ [1-9][0-9]* ]] && exit 1

max=

for ((i=0;i<$count;i++))
do
    read -p "Input number: " arg
    if [[ $arg =~ [+-]?[0-9]+ ]]
    then
        if [[ -z $max || $max -lt $arg ]]
        then
            max="$arg"
        fi
    fi
done
echo "$max"

