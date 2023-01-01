#!/bin/bash

#################### Lesson 13 Case Statements ####################

finished=0

while [ $finished -ne 1 ]
do
    echo "What is your favorite Linux distribution?"

    echo "1 - Arch"
    echo "2 - CentOS"
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6 - Something else..."
    echo "7 - Exit the script."

    read distro

    case $distro in
        1) echo "Arch is a rolling release."
           finished=1
           ;;
        2) echo "CentOS is popular on servers."
           finished=1
           ;;
        3) echo "Debian is a community distribution."
           finished=1
           ;;
        4) echo "Mint is popular on desktops and laptops."
           finished=1
           ;;
        5) echo "Ubuntu is popular on both servers and computers."
           finished=1
           ;;
        6) echo "There are many distributions out there."
           finished=1
           ;;
        7) finished=1 ;;
        *) echo "You didn't enter an appropriate choice."
           echo "Please try again..."
    esac
done

echo "Thank you for using this script."
