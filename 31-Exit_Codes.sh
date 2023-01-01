#!/bin/bash

#################### Lesson 06 Exit Codes ####################

sudo apt install notexist
exit 0
echo $?
