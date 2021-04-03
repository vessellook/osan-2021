#!/bin/bash

filename=$1
directory=$2

if [[ "$filename" = */* ]]
then
    echo filename can't contain slash / && exit 1
fi

if [[ -e "$filename" ]]
then
    echo File with such filename exists in the current directory
fi

if [[ -z "$directory" ]]
then
    directory=.
fi

path="$directory/$filename"

if [[ -e "$path" ]]
then
    [[ -f "$path" ]] && echo Regilar file
    [[ -d "$path" ]] && echo Directory
    [[ -h "$path" ]] && echo Symbolic link
    [[ -p "$path" ]] && echo Named pipe
    [[ -S "$path" ]] && echo Socket
else
    echo Such file does not exists && exit 2
fi

