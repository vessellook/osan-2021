#!/bin/bash

echo $PATH | tr : "\n" | tr -d -c '/' | while read line
do
    echo ${#line}
done
