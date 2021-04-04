#!/bin/bash
pattern='^([([])([+-]?(0|[1-9][0-9]*));([+-]?(0|[1-9][0-9]*))([])])$'
for arg
do
    ! [[ $arg =~ $pattern ]] && exit 1
done

left=()
right=()
left_sign=()
right_sign=()

for arg
do
    parts="$(echo "$arg" | sed -r "s/$pattern/\1 \2 \4 \6/")"
    left+=($(echo "$parts" | cut -d' ' -f2))
    right+=($(echo "$parts" | cut -d' ' -f3))
    [[ $(echo "$parts" | cut -d' ' -f1) = [ ]] && left_sign+=(-le) || left_sign+=(-lt)
    [[ $(echo "$parts" | cut -d' ' -f4) = ] ]] && right_sign+=(-le) || right_sign+=(-lt)
done

while read -p "Input number: " number
do
    number="$(echo "$number" | sed 's/  +/ /;s/^ //;s/ $//')"

    [[ $number = end ]] && break

    ! [[ $number =~ [+-]?(0|[1-9][0-9]*) ]] && continue
    for ((i=0;i<$#;i++))
    do
        i_=$(($i+1))
        if [ ${left[$i]} ${left_sign[$i]} $number -a $number ${right_sign[$i]} ${right[$i]} ]
        then
            echo $number is in the range $i_
        else
            echo $number is not in the range $i_
        fi
    done
done
echo

