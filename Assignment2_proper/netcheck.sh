#!/bin/sh

ping -c 3 $1
if [ $? -eq 0 ]
then
    echo "-------------------------Ping is Working--------------------------------------------"
else
    echo "Ping failed"
fi

telnet $1 443
if [ $? -eq 0 ]
then
    echo "-------------------------Telnet is Successful---------------------------------------"
else
    echo "Telnet failed"
fi

echo "The public address is as follows ------------------------------------------>"
nslookup $1 
