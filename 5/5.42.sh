#!/bin/bash

[[ $# != 1 ]] && exit 1 || name="$1"

! [[ -f $name ]] && exit 2

read -p "Input start  line: " from
read -p "Input finish line: " to

! [[ $from =~ [1-9][0-9]* && $to =~ [1-9][0-9]* ]] && exit 3

count="$(wc -l "$name" | cut -d' ' -f1)"
[[ $count -lt $to ]] && to=$count

[[ $to -lt $from ]] && exit 6

head -n "$to" "$name" | tail -n "$(($to - $from + 1))"

