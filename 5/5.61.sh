#!/bin/bash

! [[ $# = 1 && -d $1 ]] && echo Error && exit 1

dir="$1"

find "$dir" | while read path
do
    [[ ${#path} -gt ${#max} ]] && max="$path"
    echo $max
done | tail -1

