#!/bin/bash

#################### Lesson 06 Exit Codes ####################

directory=/notexist

if [ -d $directory ]
then
    echo "The directory $directory exists."
else
    echo "The directory $directory doesn't exist."
fi

echo "The exit code for this script run is $?"
