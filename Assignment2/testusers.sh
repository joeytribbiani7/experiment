#!/bin/bash
#`sudo -i`
`sudo useradd test`
if [ $? -eq 0 ] 
then
	echo "added user test"
fi

mkdir -pv testdir
cd testdir
touch testfile.txt
cd ..
`sudo chown -R test:test testdir/`
if [ $? -eq 0 ] 
then
	echo " changed permission of testdir"
fi
