#!/bin/bash

cat 4.2.sh | tee f1 > f2      # Prepare files

cat f1 | tr [:upper:] [:lower:] > f1
cat f2 | tr [:lower:] [:upper:] > f2
