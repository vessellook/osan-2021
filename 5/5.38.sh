#!/bin/bash

if [[ $# -eq 1 ]]
then
    if [[ "$1" = -l ]]
    then
        if [[ -d ~/.recycler ]]; then mkdir ~/.recycler; fi
        ls ~/.recycler
        exit 0
    elif [[ "$1" = -a ]]
    then
        if [[ -d ~/.recycler ]]; then mkdir ~/.recycler; fi
        du -s ~/.recycler
        exit 0
    elif [[ "$1" = -d ]]
        if [[ -d ~/.recycler ]]; then mkdir ~/.recycler; fi
        rm -rf ~/.recycler/*
        exit 0
    fi
fi

for i
do
    if [[ ! (-e "$i" ) ]]
    then
        exit 4
    fi
done

for i
do
    mv "$i" ~/.recycler
done

