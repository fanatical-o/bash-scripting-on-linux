#!/bin/bash

# Infinite loop until the 'test file' is removed.
NUM=1

while [ -f ~/testy ]
do
	echo "Testy exists on $(date)."
	sleep 5
done

echo "Testy does not exist on $(date)."
