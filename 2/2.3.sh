#!/bin/bash

echo Name of home directory: $(basename $(cd ~; pwd))
echo Name of home\'s parent directory: $(basename $(cd ~/..; pwd))

