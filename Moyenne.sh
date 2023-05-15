#! /usr/bin/bash

if [ ! -e "$1" ]
then
	echo "ERROR: file doesn't exist or wasnt provided"
	exit 1
fi

total=0

for moyenne in `cut -d: -f2 $1`
do
	echo $moyenne
	total=$(($total+$moyenne))
done 

num_etudiant=$(wc -l $1 | cut -d' ' -f1)

echo moyenne de class est : $(($total / $num_etudiant))