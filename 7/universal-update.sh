#!/bin/bash


RELEASE_FILE=/etc/os-release

# grep /etc/os-release to find linux distribution 
# Use quiet mode with grep
if grep -q "Debian" $RELEASE_FILE ||  grep -q "Ubuntu" $RELEASE_FILE
then
    # The host is Debian/Ubuntu, use apt
    sudo apt update
    sudo apt dist-upgrade 
fi
