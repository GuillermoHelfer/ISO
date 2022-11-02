#!/bin/bash
# Realizar un script que visualice por pantalla los numeros del 1 al 100 asi como sus cuadrados

for ((i=1; i <= 100; i++)) do
	echo "$i"
	expr $i \* $i
	sleep 1
done
