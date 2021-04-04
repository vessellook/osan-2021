#!/bin/bash

[[ $# -lt 2 ]] && exit 1

! [[ -d "$1" ]] && exit 2

dir="$1"
shift
for file
do
    mv "$file" "$dir"
done


