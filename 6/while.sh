#!/bin/bash

NUM=1

# Is $NUM less than or equal to 10?
while [ $NUM -le 10 ]
do
    echo $NUM
    NUM=$(($NUM +1))
    sleep 0.5
done
