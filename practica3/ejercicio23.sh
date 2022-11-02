#!/bin/bash
# Suma elemento a elemento entre dos vectores de misma longitud y que la misma sea impresa

pos=0
v1=( 1 80 65 35 2 )
v2=( 5 98 3 41 8 )

while [ $pos -lt ${#v1[@]} ];
do
	suma=$((${v1[$pos]} + ${v2[$pos]}))
	echo "La suma de los elementos de la posicion $pos de los vectores es $suma"
	pos=$(($pos+1))
done
