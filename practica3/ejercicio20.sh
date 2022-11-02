#!/bin/bash
# replicar una pila

push() {
	pila[$(length)]=$1			#apila un elemento pasado por parametro
}

pop() {
	local copia=${pila[`expr $(length) - 1`]}
	unset pila[`expr $(length) - 1`]
	echo $copia 				#imprime y quita el primer elemento de la pila
}

length() {
	echo ${#pila[@]}			#devuelve el largo del arreglo
}

print() {
	echo ${pila[*]}				#imprime todos los elementos de la pila
}

pila=()

while true 
do
	select option in push pop length print Salir
	do
		case $option in
			"push")
				echo "Ingrese el valor a pushear"
				read arg
				push $arg
			;;
			"pop")
				pop
			;;
			"length")
				length
			;;
			"print")
				print
			;;
			"Salir")
				exit 0
			;;
		esac
	done
done
				
				
