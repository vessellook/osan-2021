#!/bin/bash

cat << EOF >> ~/myfile                      # first method
HELLO2
WORLD2
EOF

echo -en 'HELLO3\nWORLD3\n' >> ~/myfile     # second method

