#!/bin/bash

grep st /etc/passwd | tee st_users | wc -l
