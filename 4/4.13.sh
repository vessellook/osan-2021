#!/bin/bash

ls -Al | cut -d' ' -f1,3 | tee ~/spisok | wc -l

