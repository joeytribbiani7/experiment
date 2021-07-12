#!/bin/sh

mkdir owner_dic
if [ $? -eq 0 ]
then
    echo "Directory has been created"
else
    echo "Directory already exists"
fi

cd owner_dic
touch sample.txt
if [ $? -eq 0 ]
then
    echo "File has been created"
else
    echo "File already exists"
fi

cd ..
user="$(whoami)"
chown -R $user ./owner_dic
if [ $? -eq 0 ]
then
    echo "OwnerShip has been changed to the user - $user"
else
    echo "OwnerShip couldn't be changed"
fi
