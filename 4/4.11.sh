#!/bin/bash

who | cut -d' ' -f 1 | while read -r line; do id -u "$line"; done

