#!/bin/bash

special_file="$(echo ~/.special_file.txt)"

! [[ -f $special_file ]] && touch "$special_file"

[[ $# = 1 && $1 = -show ]] && cat "$special_file" && exit 0

[[ $# -lt 2 ]] && exit 1

! [[ -d "$1" ]] && exit 2

dir="$1"
shift
for file
do
    echo "$dir/$(basename "$file")" >> "$special_file"
    mv "$file" "$dir"
done


