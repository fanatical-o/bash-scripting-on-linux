#!/bin/bash

cmd=kill
# Capture process IDs of anything related to 'thing_printer'
process_ids=$(ps ax | grep thing_printer | awk '{print $1}')

# Iterate over the captured process IDs 
for process_id in $process_ids
do # Kill each process by process ID 
    echo "Killing $process_id..."
    #$cmd $process_id
    # Check the exit code of each attempt for failures/errors
    echo "Killed with exit status: $?"
done
