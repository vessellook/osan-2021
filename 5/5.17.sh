#!/bin/bash

echo My name is "$0"
echo The number of arguments is $#

[ $# = 0 ] && exit 0

echo My arguments and their lengths:

for arg
do
    echo "$arg ${#arg}"
done

