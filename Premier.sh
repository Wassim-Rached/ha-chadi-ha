#! /usr/bin/bash

if [ ! -e "$1" ]
then
	echo "ERROR: file doesn't exist or wasnt provided"
	exit 1
fi

# main code
sort -nr -t: -k2 $1 | head -n 3 | cat