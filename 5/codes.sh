#!/bin/bash


DIR=/etc

if [ -d $DIR ] 
then
    echo "The directory $DIR exists."
    exit 0
else
    # echo $?
    # Even though the directory wasn't found, the program
    # successfully echoes this message, so the exit code
    # will be 0
    echo "The directory $DIR does not exist."
    exit 1
fi

echo "The exit code for this script is: $?"
