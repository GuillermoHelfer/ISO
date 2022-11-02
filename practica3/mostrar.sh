#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y manana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio personal es: $HOME"
echo "Ingrese un directorio para ver su contenido:"
read unDir
echo "$(ls /$unDir)"
echo "El espacio disponible del disco es $(df -h)"
echo "Su directorio actual es:"
