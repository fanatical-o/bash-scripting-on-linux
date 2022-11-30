#!/bin/bash


RELEASE_FILE=/etc/os-release
LOGFILE=/var/log/updater.log
ERRORLOG=/var/log/updater_error.log

# grep /etc/os-release to find linux distribution 
# Use quiet mode with grep
if grep -q "Debian" $RELEASE_FILE ||  grep -q "Ubuntu" $RELEASE_FILE
then
    # Redirect stdout and stderr to disk
    sudo apt update 1>>$LOGFILE 2>>$ERRORLOG
    # Is the exit code anything other than 0? 
    if [ $? -ne 0 ]
    then
	echo "An error occurred, please check the $errorlog file."
    sudo apt dist-upgrade -y
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file." 
fi
