#!/usr/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
echo "Enter operation (+, -, *, '): " 
read op

case $op in
	+)
		result=$(echo "$a+$b" | bc)
		;;
	-)
		result=$(echo "$a-$b" | bc)
		;;
	#\ is used to escape the asterisk as * is a special character in bash
	\*)
		result=$(echo "$a*$b" |bc)
		;;
	/)
		if [ "$b" == "0" ]; then
			echo  "Division by zero is not allowed."
			exit 1
		fi
		#scale is used to limit the value after decimal to 2
		result=$(echo "scale=2; $a / $b" | bc)
		;;
	*)
		echo "Invalid operation"
		exit 1
		;;
esac

echo "the result of $a $op $b is: $result"
