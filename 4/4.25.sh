#!/bin/bash

cat /etc/passwd | head | tail -6 | sort -k3,3n -t':'
