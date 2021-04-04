#!/bin/bash


while [[ $# -gt 0 ]]
do
    case $1 in
        --from)
            if [[ $2 =~ [1-9][0-9]* ]]
            then
                from=$2
                shift 2
            else
                exit 1
            fi;;
        --to)
            if [[ $2 =~ [1-9][0-9]* ]]
            then
                to=$2
                shift 2
            else
                exit 2
            fi;;
        --name)
            if [[ -f $2 ]]
            then
                name=$2
                shift 2
            else
                exit 3
            fi;;
        ?)
            exit 4;;
    esac
done

if [[ -z $from || -z $to || -z $name ]]
then
    exit 5
fi

count="$(wc -l "$name" | cut -d' ' -f1)"
[[ $count -lt $to ]] && to=$count

[[ $to -lt $from ]] && exit 6

head -n "$to" "$name" | tail -n "$(($to - $from + 1))"

