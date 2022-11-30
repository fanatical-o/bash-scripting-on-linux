#!/bin/bash


DIR=/notexist

if [ -d $DIR ] 
then
    # echo $?
    echo "The directory $DIR exists."
else
    # echo $?
    # Even though the directory wasn't found, the program
    # successfully echoes this message, so the exit code
    # will be 0
    echo "The directory $DIR does not exist."
fi

echo "The exit code for this script is: $?"
