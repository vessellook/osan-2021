#!/bin/bash

mkdir text
find . -maxdepth 1 -name '*.txt' -exec mv {} text \;

