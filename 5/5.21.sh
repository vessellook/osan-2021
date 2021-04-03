#!/bin/bash

for arg in $*
do
    if [ -f "$arg" ]
    then
        echo file
    elif [ -d "$arg" ]
    then
        echo directory
    elif [ -h "$arg" ]
    then
        echo symlink
    elif [ -p "$arg" ]
    then
        echo named pipe
    fi
done

