#1/bin/bash

function __cat_empty_file() {

    filename=
    while [ -z "$filename" ]
    do
        read -p 'Filename: ' filename
    done
    cat /dev/null > "$filename"
    unset filename
}

alias catempty='__cat_empty_file'

