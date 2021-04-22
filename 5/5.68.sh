#!/bin/bash

name="$1"
[ -z "$1" ] && name="$0"

echo -n filename:' '
basename "$0"

stat --printf="size: %s bytes\nlast modification time: %y\ncreation time: %w\nlast access time: %x\n" "$name"
