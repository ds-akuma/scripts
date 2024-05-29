#!/usr/bin/bash

#check if stat command is available
if ! command -v stat &> /dev/null
then
	echo "stat command not found.plz insert it first"
	exit
fi

#get the list of all the files in the present directory
files=(*)

#loop through each file and print its information
for file in  "${files[@]}"; do
	if [[ -f "$file" || -d "$file" ]]; then
		echo "information for: $file"
		echo "-----------------"
		echo "$file"
		size=$(stat --printf='%s' "$file")
		echo "size=$size"
		echo ""
		
	fi
done
