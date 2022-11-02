#!/bin/bash
# Realizar un script que le solicite al usuario 2 numeros, los lea de trcllado de la entrada
# estandar e imprima la multiplicacion, suma, resta y cual es el mayor de los numeros leidos
suma ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi
	
	expr $1 + $2
}

resta ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	expr $1 - $2
}

multiplicacion ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	expr $1 * $2
}

division (){
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	if [ $1 -eq 0 ] || [ $2 -eq 0 ] ;then
		echo "No se puede dividir entre 0"
		exit 2
	fi

	expr $1 / $2
}

selector () {
	if [ $# -ne 3 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	if [ -z $1 ] || [ -z $2 ] || [ -z $3 ];then
		echo "Hay un/unos parametros nulos o invalidos"
		exit 2
	fi

	case $2 in
	"+")
		suma $1 $3
	;;
	"-")
		resta $1 $3
	;;
	"*")
		multiplicacion $1 $3
	;;	
	"%")
		division $1 $3
	;;
	esac
}

echo "Ingrese la operacion a realizar"
read n1 op n2

selector $n1 $op $n2
