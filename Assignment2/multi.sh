#!/bin/bash
echo "Enter a Number"
read n
if [ $n -le 10 ]
then
i=1
while [ $i -le 10 ]
do
	echo " $n x $i = `expr $n \* $i`"
	i=`expr $i + 1`
done
else
	echo " Please enter a number less than 10 "
fi

