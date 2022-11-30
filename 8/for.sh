#!/bin/bash

# Iterate over a set of numbers
for current_number in {1..10} 
do
    echo $current_number
    sleep 1
done

echo "This is outside of the for loop."
