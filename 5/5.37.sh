#!/bin/bash

[ $# -eq 0 ] && echo You need to pass username to the script && exit 1

username="$1"

[[ "$(cat /etc/passwd | cut -d':' -f1 | grep ^"$username"$ | wc -l)" -eq 0 ]] && echo No such user && exit 2

is_here() {
    [[ "$(who | cut -d' ' -f1 | grep ^"$1"$ | wc -l)" -gt 0 ]] && echo true || echo false
}

flag=$(is_here "$username")

while :
do
    if [[ $flag = $(is_here "$username") ]]
    then
    elif [[ $flag = true ]]
    then
        flag=false
        echo \[$(date "+%d/%m/%Y %H:%M:%S")\] User $username exits
    elif [[ $flag = false ]]
    then
        flag=true
        echo \[$(date "+%d/%m/%Y %H:%M:%S")\] User $username enters
    fi
    sleep 20
done

