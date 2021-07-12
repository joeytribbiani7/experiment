#!/bin/sh

echo enter a num

read var1

echo enter another num

read var2

if [ $var1 -eq $var2 ]
then
	        echo "both are equal"
	elif [ $var1 -lt $var2 ]
	then
		        echo "$var1 is lesser in value"
		elif [ $var1 -gt $var2 ]
		then
			        echo "$var1 is greater"
			else
				        echo "wrong input"

fi
