#!/bin/bash

number=0
is_number=true

while true
do
    read -p "$number > " input
    input=$(echo "$input" | tr "\t" ' ' | sed 's/^ *//;s/ *$//')

    if [[ $input =~ ^[+-]?[0-9]+$ ]]
    then
        if [[ $is_number = true ]]
        then
            number="$input"
        else
            number="$(($number $sign $input))"
            is_number=true
        fi
    elif [[ $input =~ ^[-+*/]$ ]]
    then
        sign="$input"
        is_number=false
    else
        echo Errrooorrr!!!
        exit 1
    fi
done


