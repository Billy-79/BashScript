#!/bin/bash

#################### Lesson 07 While Loops ####################

while [ -f ~/testfile ]
do
    echo "As of $(date), the testfile exists."
done

echo "As of $(date), the testfile has gone missing."
