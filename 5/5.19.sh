#!/bin/bash

read -p "Input 3 names: " names
names="$(echo "$names" | tr "\t" ' ' | tr -s ' '):
echo "$names" | tr ' ' "\n" | head -3
count="$(echo "$names" | tr ' ' "\n" | wc -l)"
[ "$count" -le 3 ] && exit 0

echo "$names" | tr ' ' "\n" | tail -n"$(("$count" - 3))" | sed -e "s/^/extra>/"

