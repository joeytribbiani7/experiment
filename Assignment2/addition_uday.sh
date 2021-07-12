#!/bin/sh
re='^[0-9]+$'
if [[ $1 -eq $re ] && [ $2 -eq $re]]
then
sum=$(($1 + $2))
echo "Sum = $sum"
else
	echo "$1 and $2 cannot be added"
fi

