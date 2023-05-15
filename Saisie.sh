#! /usr/bin/bash

read -p "saise le nombre d'etudiants : " nombre_etudiant

i=0

while [ $i -lt $nombre_etudiant ]
do
	read -p "prenom :" prenom
	moyenne=''
	until [[ $moyenne =~ ^[0-9.]+$  ]]
	do
	read -p "moyenne :" moyenne
	done
	echo "$prenom:$moyenne" >> $1
	i=$(($i+1))
done

