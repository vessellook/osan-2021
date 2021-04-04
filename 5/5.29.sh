#!/bin/bash

read -p "Input 5 numbers: " numbers
numbers="$(echo "$numbers" | tr '\t' ' ' | tr -s ' ' | sed 's/^ *//;s/ *$//')"

$pattern="^([+-]?[0-9]+ ){4}[+-]?[0-9]+$"

if ! [[ $numbers =~ $pattern && $(echo "$numbers" | tr ' ' "\n" | wc -l) -eq 5 ]]

then
    echo Errrrrrooooorrrrr!!!!!!
    exit 1
fi

expression="($(echo "$numbers" | sed 's/ /) + (/g'))"
let x="$expression"
echo $x

