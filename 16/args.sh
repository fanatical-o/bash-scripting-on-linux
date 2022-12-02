#!/bin/bash

lines=$(ls -lh $1 | wc -l)

# Are the args a user provides not equal to 1?
if [ $# -ne 1 ]
then
    echo "This script requires only one argument passed"
    echo "Please try again"
    exit 1
fi
echo "You have $(($lines-1)) objects in the $1 directory."
