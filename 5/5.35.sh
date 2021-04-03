#!/bin/bash

for i in `seq 0 12`
do
    echo $(($i * 5)) seconds passed
    sleep 5
done

