#!/bin/bash

for name in $(ls)
do
    [[ ${name:0:1} = a ]] && mv "$name" "A${name:1}"
done

