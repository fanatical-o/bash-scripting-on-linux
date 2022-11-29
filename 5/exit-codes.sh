#!/bin/bash

# An exit code of 0 represents success. An exit code 
# of anything  other than 0 means the command was a failure.

PKG=htop

sudo apt install $PKG >> package_install_results.log

if [ $? -eq 0 ] 
then 
    echo "The installation was successful."
    echo "The new command is available here: "
    which $PKG
else
    echo "The installation was not successful." >> fail.log
fi
