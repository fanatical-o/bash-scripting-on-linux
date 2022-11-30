#!/bin/bash

# Does /etc/apt exist on the host?
if [ -d /etc/apt ]
then
    # The host is Debian/Ubuntu, use apt
    sudo apt update
    sudo apt dist-upgrade 
fi
