#!/bin/bash
# Implemente la funcion productoria que multiplique todos los elementos del array
productoria(){
	local total=1
	for i in ${num[@]};
	do
		total=$(($total * $i))
	done
	echo $total
}

num=(10 3 5 7 9 3 5 4)
productoria $num
exit 0
