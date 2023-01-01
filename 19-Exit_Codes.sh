#!/bin/bash

#################### Lesson 06 Exit Codes ####################

package=htop

sudo apt install $package

echo "The exit code for the package install is: $?"
