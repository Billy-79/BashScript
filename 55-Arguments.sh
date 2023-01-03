#!/bin/bash

#################### Lesson 16 Arguments ####################

lines=$(ls -lha $1 | wc -l)

echo "You have $(($lines-3)) objects in the $1 directory."
