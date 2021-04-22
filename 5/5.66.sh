#!/bin/bash

m=0
for line in $(echo $PATH | tr : "\n" | tr -d -c "/\n")
do
    [ $m -lt ${#line} ] && m=${#line}
done

expr $m + 1  # add 1 because of root directory
