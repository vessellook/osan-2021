#!/bin/bash

cat /etc/passwd | sort -k 3,3n -t ':'
