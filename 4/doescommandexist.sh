#!/bin/bash

CMD=/usr/bin/htop

if [ -f $CMD ] 
then
    echo "$CMD is available, running..."
else
    echo "$CMD command is not available, installing..."
    sudo apt update && sudo apt install -y htop
fi

$CMD
    
