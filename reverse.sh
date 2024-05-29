#!/usr/bin/bash

#print string in reverse order

read -p "enter your number here: " -r -a  a

if [ "${#a[@]}" -eq 0 ]; then
	echo "no numbers provided."
	exit 1
fi

echo "Numbers in reverse order: "
for ((i=${#a[@]}-1; i>=0; i--)); do
	echo "${a[i]}"
done


