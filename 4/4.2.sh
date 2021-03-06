#!/bin/bash

cat << EOF > ~/myfile
HELLO
WORLD
EOF

cat << EOF > ~/MyFile
HELLO
WORLD
EOF

echo Two files 'myfile' and 'MyFile' were created in home directory
