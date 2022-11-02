#!/bin/bash
# verifica cada 10 segundos si un usuario esta logueado e informa cuando se loguea

until who | grep -q "$1"
do
	sleep 10
done

echo "Usuario $1 logueado en el sistema"
