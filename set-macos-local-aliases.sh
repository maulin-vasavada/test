#!/bin/bash

op_code=$1

echo "op_code="$op_code

if [[ "$op_code" == "" ]]; then
	echo "Hello"
elif [[ "$op_code" == "d" ]]; then
	echo "Going to delete!"
else
	echo "Going to set!"
fi

for subnet in $(seq 0 5); do 
	for id in $(seq 0 5); do 
		if [[ "$op_code" == "d" ]]; then
			sudo ifconfig lo0 -alias 127.0.$subnet.$id; 
		else
			sudo ifconfig lo0 alias 127.0.$subnet.$id; 
		fi
	done; 
done;
