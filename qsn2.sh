#!/bin/bash
read -p "Please enter value: " n
if [ $n -gt 200 ] 2>/dev/null; then
    echo "$n is more than 200"
elif [ $n -lt 100 ] 2>/dev/null; then
    echo "$n is less than 100" 
elif [ $n -gt 100 ] 2>/dev/null && [ $n -lt 200 ]; then
    echo "$n bingo"
else 
    echo "Enter a number between 100 & 200"    
fi 