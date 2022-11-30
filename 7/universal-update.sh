#!/bin/bash


RELEASE_FILE=/etc/os-release
LOGFILE=/var/log/updater.log
ERRORLOG=/var/log/updater_error.log

# grep /etc/os-release to find linux distribution 
# Use quiet mode with grep
if grep -q "Debian" $RELEASE_FILE ||  grep -q "Ubuntu" $RELEASE_FILE
then
    # The host is Debian/Ubuntu, use apt
    sudo apt update 1>>$LOGFILE 2>>$ERRORLOG
    if [ $? -ne 0 ]
    then
	echo "An error occurred, please check the $errorlog file."
    sudo apt dist-upgrade 
fi
