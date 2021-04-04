#!/bin/bash

read -p "Input username: " username

fields="$(cat /etc/passwd | grep "$pattern:" | cut -d: -f5,6)"

group="$(echo "$fields" | cut -d: -f1)"
home="$(echo "$fields" | cut -d: -f2)"
echo Your group is "$group"
echo Your home directory is "$home"
ls "$home"

