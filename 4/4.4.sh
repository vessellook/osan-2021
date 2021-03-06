#!/bin/bash

cd
ls > spisok
cat spisok
echo The content of 'spisok' is a column of filenames and the output of 'ls' is one or several rows of filenames

> spisok
for line in $(ls)
do
    echo -n $line' ' >> spisok
done
echo >> spisok
