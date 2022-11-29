#!/bin/bash


DIR=/notexist

if [ -d $DIR ] 
then
    # echo $?
    echo "The directory $DIR exists."
else
    # echo $?
    echo "The directory $DIR does not exist."
fi

echo "The exit code for this script is: $?"
