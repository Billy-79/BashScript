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

package=notexist
 
sudo apt install $package

echo "The exit code for the package install is: $?"
