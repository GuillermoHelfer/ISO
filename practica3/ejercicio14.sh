#!/bin/bash
# Renombra solo archivos de un directorio pasado como parametro agregandole una CADENA,
# contemplando las opciones

if [ $# -ne 3 ]; then
	echo "La cantidad de parametros ingresada es incorrecta"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "El fichero ingresado ($1) no es un directorio o no existe"
	exit 2
fi

if [ "$2" != "-a" ] && [ "$2" != "-b" ]; then
	echo "El flag ingresado es invalido"
	exit 3
fi

for file in $(ls $1); do
	if [ ! -f $file ]; then
		continue
	fi

	if [ $2 = "-a" ]; then
		mv $archivo $archivo$3
	else
		mv $archivo $3$archivo
	fi
done
