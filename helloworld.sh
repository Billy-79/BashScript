#!/bin/bash

#################### Lesson 02 - Hello World! ####################
#echo "Hello World!"

#echo "My current working directory is:"
#pwd

#################### Lesson 03 - Variables ####################
#myname="Billy"
#myage="43"

#echo "Hello, my name is $myname."
#echo "I'm $myage years old."

#------------------------------------------------------------------------------------

#word="fun"

#echo "Linux is $word"
#echo "Video games are $word"
#echo "Sunny days are $word"

#------------------------------------------------------------------------------------

#now=$(date)

#echo "The system time and date is:"

#echo $now

#------------------------------------------------------------------------------------

#echo "The system time and date is:"

#date

#------------------------------------------------------------------------------------

#name="Billy"

#now=$(date)

#echo "Hello $name"

#echo "The system time and date is:"

#echo $now

#echo "Your username is: $USER"

#################### Lesson 05 If Statements ####################
#mynum=200

#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#fi

#------------------------------------------------------------------------------------

#mynum=300
 
#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#fi

#------------------------------------------------------------------------------------

#mynum=200

#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#fi

#if [ $mynum -eq 300 ]
#then
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=200

#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=300

#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=300

#if [ ! $mynum -eq 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=300

#if [ $mynum -ne 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=300
 
#if [ $mynum -gt 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#mynum=300
 
#if [ $mynum -lt 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The variable does not equal 200."
#fi

#------------------------------------------------------------------------------------

#if [ -f ~/myfile ]
#then
#    echo "The file exists"
#else
#    echo "The file does not exist"
#fi

#------------------------------------------------------------------------------------

#command=/usr/bin/htop

#if [ -f $command ]
#then
#    echo "$command is available, let's run it..."
#else
#    echo "$command is NOT available, installing it..."
#    sudo apt update && sudo apt install -y htop
#fi

#$command

#------------------------------------------------------------------------------------

#command=htop

#if command -v $command
#then
#    echo "$command is available, let's run it..."
#else
#    echo "$command is NOT available, installing it..."
#    sudo apt update && sudo apt install -y $command
#fi

#$command

#################### Lesson 06 Exit Codes ####################
#package=htop

#sudo apt install $package

#echo "The exit code for the package install is: $?"

#------------------------------------------------------------------------------------

#package=notexist
 
#sudo apt install $package

#echo "The exit code for the package install is: $?"

#------------------------------------------------------------------------------------

#package=htop

#sudo apt install $package

#if [ $? -eq 0 ]
#then
#    echo "The installation of $package was successful."
#    echo "The new command is available here:"
#    which $package
#else
#    echo "$package failed to install."
#fi

#------------------------------------------------------------------------------------

#package=notexist

#sudo apt install $package

#if [ $? -eq 0 ] 
#then
#    echo "The installation of $package was successful."
#    echo "The new command is available here:"
#    which $package
#else
#    echo "$package failed to install."
#fi

#------------------------------------------------------------------------------------

#package=htop

#sudo apt install $package >> package_install_results.log

#if [ $? -eq 0 ] 
#then
#    echo "The installation of $package was successful."
#    echo "The new command is available here:"
#    which $package
#else
#    echo "$package failed to install." >> package_install_failure.log
#fi

#------------------------------------------------------------------------------------

#package=notexist

#sudo apt install $package >> package_install_results.log

#if [ $? -eq 0 ] 
#then
#    echo "The installation of $package was successful."
#    echo "The new command is available here:"
#    which $package
#else
#    echo "$package failed to install." >> package_install_failure.log
#fi

#------------------------------------------------------------------------------------

#directory=/etc

#if [ -d $directory ]
#then
#    echo "The directory $directory exists."
#else
#    echo "The directory $directory doesn't exist."
#fi

#echo "The exit code for this script run is $?"

#------------------------------------------------------------------------------------

#directory=/notexist

#if [ -d $directory ]
#then
#    echo "The directory $directory exists."
#else
#    echo "The directory $directory doesn't exist."
#fi

#echo "The exit code for this script run is $?"

#------------------------------------------------------------------------------------

#directory=/notexist

#if [ -d $directory ]
#then
#    echo $?
#    echo "The directory $directory exists."
#else
#    echo $?
#    echo "The directory $directory doesn't exist."
#fi

#echo "The exit code for this script run is $?"

#------------------------------------------------------------------------------------

#echo "Hello world"
#echo $?

#------------------------------------------------------------------------------------

#echo "Hello world"
#exit 1
#echo $?

#------------------------------------------------------------------------------------

#echo "Hello world"
#exit 199
#echo $?

#------------------------------------------------------------------------------------

#sudo apt install notexist
#exit 0
#echo $?

#------------------------------------------------------------------------------------

#directory=/etc

#if [ -d $directory ]
#then
#    echo "The directory $directory exists."
#    exit 0
#else
#    echo "The directory $directory doesn't exist."
#    exit 1
#fi

#echo "The exit code for this script run is $?"
#echo "You didn't see that statement"
#echo "You won't see this one either"

#################### Lesson 07 While Loops ####################
#myvar=1

#while [ $myvar -le 10 ]
#do
#    echo $myvar
#    myvar=$(( $myvar +1 ))
#    sleep 0.5
#done

#------------------------------------------------------------------------------------

while [ -f ~/testfile ]
do
    echo "The testfile exists."
done

echo "The testfile no longer exists. Exiting."
