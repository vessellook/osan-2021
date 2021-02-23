#!/bin/bash

if command -v ncal &> /dev/null
then
cal=ncal
else
cal=cal
fi

echo Current month\'s calendar
$cal
echo Calendar for December
$cal Dec
