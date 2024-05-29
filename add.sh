#!/usr/bin/bash

read -p "enter first number: " a
read -p "enter second number: " b

add=$(echo "$a+$b" | bc)

echo "addition: $add"
