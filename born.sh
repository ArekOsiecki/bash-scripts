#!/bin/bash

#this program uses iteration to display a month and the time the file was last modified

count=0

for item in $(ls -l)
do
	((count++))
	if [[ $count -eq 8 ]]
	then
		monthtime=( $(ls -l) )
		month=( ${monthtime[7]} )
		time=( ${monthtime[9]} )
		echo "The $1 was last modified in month of ${month[0]} at ${time[0]}"
	fi
done
