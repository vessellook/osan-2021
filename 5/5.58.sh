#!/bin/bash

line5="$(head -5 /etc/passwd | tail -1)"
echo "$line5"
