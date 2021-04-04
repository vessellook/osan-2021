#!/bin/bash

ls -l $PWD | tr -s ' ' | cut -d' ' -f5,9 | sort -n -k1 | tail -1 | cut -d' ' -f2
