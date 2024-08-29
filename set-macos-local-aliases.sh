#!/bin/bash

for subnet in $(seq 0 5); do 
	for id in $(seq 0 5); do 
		sudo ifconfig lo0 alias 127.0.$subnet.$id; 
	done; 
done;
