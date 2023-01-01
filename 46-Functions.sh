#!/bin/bash

#################### Lesson 12 Functions ####################

release_file=/etc/os-release
logfile=~/Working-Directory/BashScript/log/updater.log
errorlog=~/Working-Directory/BashScript/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
}

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command.
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status
fi

if grep -qi "Debian" $release_file || grep -qi "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu, run the apt version of the command.
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
    
    sudo apt full-upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status
fi
