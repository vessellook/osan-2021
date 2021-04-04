#!/bin/bash

read -p "Input number Y: " Y
if [[ "$Y" =~ "^[+-]?[0-9]+([.][0-9]+)?$" ]]
then
    echo Not a number
    exit 1
fi

if [ "$Y" -gt 7 ]
then
    echo Y is greater than 7
else
    echo Y is not greater than 7
fi
