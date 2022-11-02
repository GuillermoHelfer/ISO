#!/bin/bash
# mostrar un menu con la seleccion para cada uno de los scripts creados en esta practica, las
# instrucciones de como proceder deben mostrarse junto con el menu.

echo " MENU DE COMANDOS "
for i in `ls -1`; do
	echo "i " " $i"
done
echo "Ingrese la opcion a ejecutar: "
read option
case $option in
	"1")
		./ejercicio12-a.sh
	"2")
		./ejercicio12-c.sh
	
