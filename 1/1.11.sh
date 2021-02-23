#!/bin/bash

echo Current month\'s calendar
cal
echo Calendar for December
cal Dec &> /dev/null
if test $? ; then cal Dec; else cal -m Dec; fi

