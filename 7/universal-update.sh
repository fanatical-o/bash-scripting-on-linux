#!/bin/bash

RELEASE_FILE=/etc/os-release

# Does /etc/apt exist on the host?
# Use quiet mode with grep
if grep -q "Ubuntu" $RELEASE_FILE 
then
    # The host is Debian/Ubuntu, use apt
    sudo apt update
    sudo apt dist-upgrade 
fi
