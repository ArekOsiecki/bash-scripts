#!/bin/bash

result=($(ls -l))

for (( c=0; c<=${#result[*]}; c++ ))
do
	if [[ $c -eq 8 ]]
	then
		echo "The $1 was last modified in month of ${result[7]} at ${result[9]} hours"
	fi
done

