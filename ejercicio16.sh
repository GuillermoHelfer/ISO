#!/bin/bash
# Reciba como param una ext y haga un reporte con 2 columnas, el nombre de usuario y la cantidad
# de archivos que posee con esa extension. Se debe guardar el resultado en un archivo llamado
# reporte.txt

if [ $# -ne 1 ]; then
	echo " La cantidad de parametros ingresada es incorrecta"
	exit 1
fi

a=`cat /etc/passwd | cut -d ":" -f1`
for i in $a; do
	var=`find -user $i -name \*.$1 | wc -l`
	echo $i $var
done
