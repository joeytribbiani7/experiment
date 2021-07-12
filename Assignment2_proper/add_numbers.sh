#!/bin/sh

sum=`expr $1 + $2` 2> /dev/null
if [ $? -eq 0 ]
then
    echo "The sum of the numbers is - $sum"
else
    echo "Error: Incompatible type for addition"
    exit 1
fi
