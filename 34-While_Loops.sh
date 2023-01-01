#!/bin/bash

#################### Lesson 07 While Loops ####################

while [ -f ~/testfile ]
do
    echo "The testfile exists."
done

echo "The testfile no longer exists. Exiting."
