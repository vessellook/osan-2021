#!/bin/bash

read -p "Do you want to see the contents of current working directory?[yes/no] " answer

if [ "$a" = yes ]
then
    ls
    exit
fi

read -p "What directory's contents do you want to see? " answer

answer=${answer/#~/$HOME}

if [ -d "$answer" ]
then
    echo The directory does not exists
    exit 1
fi

ls "$answer"

