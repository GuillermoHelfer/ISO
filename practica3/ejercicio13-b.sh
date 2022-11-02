#!/bin/bash
# Crear un script que muestre 3 opciones al usuario: listar, donde estoy y quien esta

select eleccion in Listar DondeEstoy QuienEsta
do
	case $eleccion in
		"Listar")
			echo $(ls)
		;;
		"DondeEstoy")
			echo $(pwd)
		;;
		"QuienEsta")
			echo $(who)
		;;
	esac
	exit 0
done
