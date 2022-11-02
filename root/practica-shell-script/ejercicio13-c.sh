#!/bin/bash
# Reciba como parametro el nombre de un archivo e informe si el mismo existe o no, y en caso
# afirmativo indique si es un directorio o un archivo. En caso de que no exista el arch/directorio
# cree un directorio con el nombre recibido como parametro.

procesar () {
	if [ -d "$1" ]; then
		echo "Se encontro y es un directorio"
		exit 0
	elif [ -f "$1" ]; then
		echo "Se encontro y es un archivo"
		exit 0
	elif [ ! -e "$1" ]; then
		echo "El fichero no existe"
		sleep 1
		echo "Creando un directorio con ese nombre..."
		sleep 1
		mkdir $1
		exit 2
	fi
}

#programa ppal
echo "Ingrese el fichero que quiere verificar"
read fichero

procesar "$fichero"
