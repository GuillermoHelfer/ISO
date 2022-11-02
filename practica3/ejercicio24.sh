#!/bin/bash
#Este es el ejercicio 24 de la practica 3 de ISO

vector1=( 1 80 65 35 2 )

vector2=( 5 98 3 41 8 )

i=0
while [ $i -le ${#vector1[*]} ]
do
	suma=$((${vector1[$i]} + ${vector2[$i]}))
	echo "La suma de los elementos de la posicion $i de los vectores es $suma"
	i=$(($i + 1))
done
echo "El script ha finalizado con exito"
exit 0
