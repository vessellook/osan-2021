#!/bin/bash
echo work directory: $PWD
abspath="$(realpath "$0")"
echo -n script directory name:' '
dirname "$abspath"

echo -n script filename:' '
basename "$abspath"

