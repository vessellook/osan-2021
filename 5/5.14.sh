#!/bin/bash

for i
do
    if [[ "$i" = UNIX ]]
    then
        echo yes
        exit 0
    fi
done

echo no

