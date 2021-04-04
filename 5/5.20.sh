#!/bin/bash

hours="$(date +%H)"

if   [[  6 -le "$hours" && "$hours" -lt 12 ]]; then echo Good morning
elif [[ 12 -le "$hours" && "$hours" -lt 18 ]]; then echo Good afternoon
elif [[ 18 -le "$hours" && "$hours" -lt 22 ]]; then echo Good evening
else echo Good nigh
fi

