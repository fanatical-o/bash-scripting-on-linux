#!/bin/bash

NUM=200

# -ne not equal
# -gt greather than
# -eq equal
# ! reverse an operation or check

# Is $NUM equal to 200?
if [ $NUM -eq 200 ]
then
    echo "The condition is true."
else
    echo "$NUM does not equal 200."
# Close the if statement
fi
