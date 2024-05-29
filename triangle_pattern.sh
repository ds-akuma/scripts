#!/usr/bin/bash

#read the value of n

read -p "Enter the value of n: " n

#generate the pattern

for (( i=1; i<=n; i++ ))  do
	for ((j=1; j<=i; j++)); do
		echo -n "$j"
	done
	echo ""
done

