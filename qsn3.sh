#!/bin/bash
if [ -z $1 ]; then
    echo "Please enter argument!!!"
    exit 0
elif [ $EUID != 0 ]; then
    echo "Please run as root"
    exit 0
elif [ $# -lt 3 ]; then
    echo "Enter more than 3 arguments"   
else 
    echo $@
fi
