#! /usr/bin/bash

if [ ! -e "$1" ]
then
	echo "ERROR: file doesn't exist or wasnt provided"
	exit 1
fi

# main code

cat $1