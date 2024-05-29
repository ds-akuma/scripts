#!/usr/bin/bash

read -p "Enter the value of n: " n

current_number=1

for (( i=1; i<=n; i++ )); do
	for (( j=1; j<=i; j++ )); do
		echo -n "$current_number"
		((current_number++))
	done
	echo ""
done
