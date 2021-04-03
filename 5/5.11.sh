#!/bin/bash

[[ "$1" = usage ]] && cat << EOF && exit 1
$0 directory type
    There directory is some existing directory and type is one of types listed in 'man find':
        b      block (buffered) special
        c      character (unbuffered) special
        d      directory
        p      named pipe (FIFO)
        f      regular file
        l      symbolic link
        s      socket
EOF

[[ $# -lt 2 || $# -gt 2 ]] && echo Wrong number of params. See \'$0 usage\' && exit 2

directory="${1/#~/$HOME}"
type="$2"

if ! [ -d "$directory" ]
then
    echo Directory does not exists. The directory should be the first param && exit 3
fi

if ! [[ bcdpfls = *"$type"* ]]
then
    echo Wrong letter in type && exit 4
fi

if ! [[ ${#type} -eq 1 ]]
then
    echo Type must be one letter && exit 5
fi

find "$directory" -iname 'A*' -and -type "$type" -or -name '*my*'
