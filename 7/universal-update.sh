#!/bin/bash


RELEASE_FILE=/etc/os-release
LOGFILE=/var/log/updater.log
ERRORLOG=/var/log/updater_error.log

# Is the exit code anything other than 0?
check_exit_status() {
    if [ $? -ne 0 ]
    then
	echo "An error occurred, please check the $errorlog file."
    fi
}
# grep /etc/os-release to find linux distribution 
# Use quiet mode with grep
if grep -q "Debian" $RELEASE_FILE ||  grep -q "Ubuntu" $RELEASE_FILE
then
    # Redirect stdout and stderr to disk
    sudo apt update 1>>$LOGFILE 2>>$ERRORLOG
    check_exit_status

    sudo apt dist-upgrade -y 1>>$LOGFILE 2>>$ERRORLOG
    check_exit_status
fi
