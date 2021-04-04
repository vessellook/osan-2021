#!/bin/bash

find . -maxdepth 1 -name '*.txt' | sed -r 's/((.*)\.txt)/\1 \2.doc/' |
    while read from to
    do
        mv "$from" "$to"
    done

