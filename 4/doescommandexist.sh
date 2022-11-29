#!/bin/bash

CMD=htop
# Check for the existence of our CMD variable
# using command, similar to which
if command -v $CMD 
then
    echo "$CMD is available, running..."
else
    echo "$CMD command is not available, installing..."
    # Apt package manager is Debian specific
    sudo apt update && sudo apt install -y $CMD
fi
# Run the command
$CMD
    
