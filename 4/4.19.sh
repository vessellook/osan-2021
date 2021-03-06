#!/bin/bash

touch file.name.dots

echo file.name.dots
echo file.name.dots | cut -d'.' -f1
echo file.name.dots | cut -d'.' -f2
echo file.name.dots | cut -d'.' -f3
