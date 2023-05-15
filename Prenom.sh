#! /usr/bin/bash

if [ ! -e "$1" ]
then
	echo "ERROR: file doesn't exist or wasnt provided"
	exit 1
fi

cut -d: -f1 $1 | sort | uniq | cat