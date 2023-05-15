#! /usr/bin/bash

read -p "saise le nom de la class: " nom_class
touch $nom_class

choix=-1

until [ $choix -eq 6 ]
do
	echo "--------------------------------------------------------"
	echo "1. Saisie des données des étudiants."
	echo "2. Afficher tous les étudiants de la classe."
	echo "3. Afficher les trois premiers étudiants."
	echo "4. Calculer la moyenne de la classe."
	echo "5. Afficher les prénoms des étudiants sans doublons."
	echo "6. Quitter."
	read -p "==> " choix
	echo "--------------------------------------------------------"

	case "$choix" in
		1) 
			./Saisie.sh $nom_class
		;;

		2) 
			echo $nom_class
			./Affichage.sh $nom_class
		;;

		3) 
			./Premier.sh $nom_class
		;;

		4) 
			./Moyenne.sh $nom_class
		;;

		5) 
			./Prenom.sh $nom_class
		;;

		6)
			echo closing program...
		;;


	esac
done