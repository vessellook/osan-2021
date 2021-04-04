#!/bin/bash

read -p "The first word: "  word1
read -p "The second word: " word2
if [[ ${#word1} -lt ${#word2} ]]
then
    echo The first word is longer than the second one
elif [[ ${#word1} = ${#word2} ]]
then
    echo The words have the same lengths
else
    echo The second word is longer than the first one
fi

