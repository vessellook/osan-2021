#!/bin/bash

find . -maxdepth 1 -name 'a.doc' | sed -r 's/((.*)\.doc)/\1 \2.text/' |
    while read from to
    do
        mv "$from" "$to"
    done

