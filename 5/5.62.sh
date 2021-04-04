#!/bin/bash

! [[ $# -gt 0 && -d $1 ]] && echo Error && exit 1

dir="$1"
shift

if [[ $# -gt 0 ]]
then
    commands="-user $1"
    shift
    for i
    do
        commands="$commands -o -user $i"
    done
fi

max=

find "$dir" $commands | while read path; do [[ ${#path} -gt ${#max} ]] && max="$path"; echo $max; done | tail -1

