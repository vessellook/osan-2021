#!/bin/bash

read -p "Input string: " string

test "$string" = UNIX && echo string is \'UNIX\' || echo string is not \'UNIX\'

