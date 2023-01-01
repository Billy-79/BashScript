#!/bin/bash

#################### Lesson 09 For Loops ####################

for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
done
