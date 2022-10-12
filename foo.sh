#!/bin/bash
if [ -z $1 ]; then
		echo "Please enter argument"
		#exit 0
elif [ $1 = fedora ]; then
		echo "redhat"
elif [ $1 = redhat ]; then
		echo "fedora"
else
		echo "/root/foo.sh redhat|fedora"
fi       
