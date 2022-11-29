#!/bin/bash

NAME="Jimbob"
HATSIZE="7.5"

# Single quotes won't print the variable's value:
echo 'Hello, my name is $NAME.'
# Double quotes will.
echo "Hello, my name is $NAME."
echo "My hatsize is $HATSIZE."

echo "---"
# Sometimes we use variables to repetition
WORD="awesome"

echo "Linux is $WORD"
echo "Sunny days are $WORD"
echo "Tea is $WORD"

echo "---"

