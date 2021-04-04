#!/bin/bash
pattern='^([([])([+-]?(0|[1-9][0-9]*));([+-]?(0|[1-9][0-9]*))([])])$'
! [[ $# = 1 && $1 =~ $pattern ]] && exit 1

parts="$(echo "$1" | sed -r "s/$pattern/\1 \2 \4 \6/")"
left=$(echo "$parts" | cut -d' ' -f2)
right=$(echo "$parts" | cut -d' ' -f3)
[[ $(echo "$parts" | cut -d' ' -f1) = [ ]] && left_sign=-le || left_sign=-lt
[[ $(echo "$parts" | cut -d' ' -f4) = ] ]] && right_sign=-le || right_sign=-lt

while read -p "Input number: " number
do
    number="$(echo "$number" | sed 's/  +/ /;s/^ //;s/ $//')"

    [[ $number = end ]] && break

    if [[ $number =~ [+-]?(0|[1-9][0-9]*) ]]
    then
        if [ $left $left_sign $number -a $number $right_sign $right ]
        then
            echo Included
        else
            echo Not included
        fi
    fi
done
echo

