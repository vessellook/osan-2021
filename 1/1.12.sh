#!/bin/bash

if command -v ncal &> /dev/null
then
cal=ncal
else
cal=cal
fi

echo Next year\'s calendar, the first day of week is monday
$cal -y "$(echo $(($(date +%Y) + 1)))" --monday
echo -e '\n\n'
echo Next year\'s calendar, the first day of week is sunday
$cal -y "$(echo $(($(date +%Y) + 1)))" --sunday
