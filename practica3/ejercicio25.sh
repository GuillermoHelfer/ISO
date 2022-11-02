#!/bin/bash
#Este es el ejercicio 25 de la practica 3 de ISO UNLP

vector=($(cat /etc/group | cut -d: -f4 | grep -w users | tr ',' ' '))

if [ $# -eq 0 ] || [ $# -gt 2 ];then
	echo "La cantidad de parametros ingresados en incorrecta"
	exit 1
fi

if [ $1 = "-b" ]; then
	if [ $# -ne 2 ]; then
		echo "Debes ingresar un segundo parametro"
		exit 9
	fi
	if [ $2 -gt ${#vector[*]} ]; then
		echo "Debes ingresar un NUMERO que se encuentre dentro del rango de posiciones del vector"
		exit 10
	fi
fi

if [ $1 = "-b" ] && [ $1 = "-l" ] && [ $1 = "-i" ]; then
	echo "Debes ingresar un parametro valido"
	echo "Las opciones son: -b , -l , -i"
	exit 2
fi

case $1 in
	"-b")
		echo "${vector[$2]}"
	;;

	"-l")
		echo ${#vector[*]}
	;;

	"i")
		echo ${vector[*]}
	;;
esac

exit 0
