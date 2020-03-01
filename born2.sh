#!/bin/bash

#same program but with actual iteration

count=0

for item in $(ls -l)
do
	((count++))
	if [[ $count -eq 8 ]]
	then
		echo "$1 was last modified in $item"
		echo -n
	fi
	if [[ $count -eq 10 ]]
	then
			echo "at $item hours"
	fi
done
