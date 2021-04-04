#!/bin/bash

max=0
sum=0

for i
do
    [[ $max -lt ${#i} ]] && max=${#i}
    sum=$(($sum + ${#i}))
done

echo Max length of argument is $max
echo Total sum of argument\'s lengths is $sum

