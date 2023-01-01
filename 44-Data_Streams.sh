#!/bin/bash

#################### Lesson 11 Data Streams ####################

release_file=/etc/os-release
logfile=~/Working-Directory/BashScript/log/updater.log
errorlog=~/Working-Directory/BashScript/log/updater_errors.log

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command.
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
fi

if grep -qi "Debian" $release_file || grep -qi "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu, run the apt version of the command.
    sudo apt update 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
    sudo apt full-upgrade -y 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
fi
