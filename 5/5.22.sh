#!/bin/bash

read -p "uid: " uid
if [ -z "$uid" ]
then
    echo Wrong uid
    exit 1
fi

dir="$(cat /etc/passwd | cut -d':' -f3,6 | grep "^$uid:" | cut -d':' -f6)"

if [ -z "$dir" ]
then
    echo Wrong uid
    exit 2
else
    echo "$dir"
fi

