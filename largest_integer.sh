#!/usr/bin/bash

#check if the user provided the arguments

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <integer1> <integer2> ..... <integerN>"
	exit 1
fi

max_value=$1

for num in "${@:2}"; do
	if [ "$num" -gt "$max_value" ]; then
		max_value=$num
	fi
done

echo "the maximum value is: $max_value"
