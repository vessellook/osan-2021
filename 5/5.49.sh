#!/bin/bash

while read -p "--> " name
do
    name=$(echo "$name" | sed 's/  +/ /;s/^ //;s/ $//')

    if [[ ${name:0:1} = @ ]]
    then
        cd "${name:1}"
    else
        mkdir "$name"
    fi
done
echo
