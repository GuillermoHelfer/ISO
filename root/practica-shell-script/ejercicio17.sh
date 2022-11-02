#!/bin/bash
# imprima en pantalla los nombres de los archivos que se encuentran en el directorio actual,
# intercambiando minusculas por mayusculas, ademas de eliminar la letra a:

echo "Estos son los ficheros del directorio actual:"
sleep 1
echo `ls`
sleep 3
echo "Estos son los ficheros traducidos:"
sleep 1
echo `ls | tr '[:upper:] [:lower:]' '[:lower:] [:upper:]'`

