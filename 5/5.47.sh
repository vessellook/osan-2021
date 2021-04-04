#!/bin/bash

find . -maxdepth 1 -executable -type f \! -name '*.exe' |
    while read name
    do
        mv "$name" "$name.exe"
    done

