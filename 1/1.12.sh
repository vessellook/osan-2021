#!/bin/bash

cal -y 2021 &> /dev/null
if test $?; then cal="cal -y"; else cal="cal"; fi

echo Next year\'s calendar, the first day of week is monday
$cal "$(echo $(($(date +%Y) + 1)))" --monday
echo -e '\n\n'
echo Next year\'s calendar, the first day of week is sunday
$cal "$(echo $(($(date +%Y) + 1)))" --sunday
