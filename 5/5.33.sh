#!/bin/bash

tmpfile="$(mktemp)"
while true
do
    read -p "Input word > " word
    echo "$word" >> "$tmpfile"
    if [[ $word == end ]]; then break; fi
done
sort "$tmpfile"

