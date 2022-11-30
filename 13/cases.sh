#!/bin/bash

FINISHED=0

while [ $FINISHED -ne 1 ]
do
    echo "What is your favorite fruit?"

    echo "1 - Apple"
    echo "2 - Banana"
    echo "3 - Orange"

    read fruit;

# Every case needs to end in two semicolons
    case $fruit in
        1) echo "Apples are great.";; 
	2) echo "Bananas are a good choice.";;
	3) echo "Oranges are my favorite.";;
	4) FINISHED=1 ;;
	*) echo "Invalid choice."
    esac
done

echo "See you next time."



