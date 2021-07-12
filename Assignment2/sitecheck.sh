#!/bin/bash
HOST=$1
echo $HOST
ping -c 1 $HOST
SUCCESS=$?
if [ $SUCCESS -eq 0 ]
then
  echo "$HOST has replied"
else
  echo "$HOST didn't reply"
fi

ip=`nslookup $HOST|grep 'Address:'`
echo $ip
#EOF
