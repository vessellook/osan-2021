#!/bin/bash

cat /etc/passwd | cut -d':' -f1,3,6 | grep -E ':1[0-9]{3}:'
