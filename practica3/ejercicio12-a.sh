#!/bin/bash
# Realizar un script que le solicite al usuario 2 numeros, los lea de trcllado de la entrada
# estandar e imprima la multiplicacion, suma, resta y cual es el mayor de los numeros leidos
suma ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi
	
	local a=$1
	local b=$2
	let total=a+b
	return $total
}

resta ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	let total=$1-$2
	return $total
}

multiplicacion ()
{
	if [ $# != 2 ]; then
		echo "La cantidad de parametros es incorrecta"
		exit 1
	fi

	let total=$1*$2
	return $total
}

echo "Ingrese dos numeros con el teclado"
read n1 n2
multiplicacion $n1 $n2
echo "la multiplicacion de ambos numeros es igual a: $?"
suma $n1 $n2
echo "la suma de ambos numeros es igual a: $?"
resta $n1 $n2
echo "la resta de ambos numeros es igual a: $?"
