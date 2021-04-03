#!/bin/bash

read -p "Input filename: " filename

if [[ "$filename" = */* ]]
then
    echo filename can't contain slash / && exit 1
fi

if [[ -e "$filename" ]]
then
    echo File with such filename exists in the current directory
fi

