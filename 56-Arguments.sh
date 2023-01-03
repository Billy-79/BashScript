#!/bin/bash

#################### Lesson 16 Arguments ####################

lines=$(ls -lha $1 | wc -l)

if [ $# -ne 1 ]
then
    echo "This script requires exactly one directory path passed to it."
    echo "Please try again."
    exit 1
fi

echo "You have $(($lines-3)) objects in the $1 directory."
