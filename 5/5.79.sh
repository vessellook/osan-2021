#!/bin/bash

virus="$(dirname "$(realpath "$0")")/virus4.example"
[ -n "$2" ] && virus="$2"

folder="${1:-/}"

for name in $(find "$folder" -type f -executable 2> /dev/null )
do
    count1="$(cat "$name" | sed '/^$/d' | diff -wEB -y - "$virus" | wc -l)"
    count2="$(cat "$name" | sed '/^$/d' | diff -wEB -y --suppress-common-lines - "$virus" | wc -l)"
    if [[ $(($count1 - $count2)) -gt 10 ]]
    then
        echo File $name infected!!!
        cat < "$name" > "$name.vir"
        tmp="$(mktemp)"
        head -n $(($(grep -n 'for name' < "$name" | cut -d: -f1 | tail -1) - 1)) < "$name" > "$tmp"
        cat "$tmp" > "$name"
        echo File $name fixed :\)
    fi
done

