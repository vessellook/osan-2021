#!/bin/bash

cat /etc/passwd | cut -d':' -f1,6 | grep -E ':.*/home$|:.*/home/'

