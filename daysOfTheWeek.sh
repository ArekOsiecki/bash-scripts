#!/bin/bash

#this program displays an array of week days and the asks user to chose a number displaying day accordingly to the choice

week=( Mon Tue Wed Thu Fri Sat Sun )

for (( c=0; c<${#week[*]}; c++ ))
do
	echo "$[c+1] : ${week[$c]}"
done

read -p "Choose a number for a day:" choice
if [[ $choice -lt ${#week[*]}+1 ]] && [[ $choice -gt 0 ]]
then
	echo "Your chosen day is ${week[$choice-1]}"
	exit 0
else
	echo "You need to chose a number from 1 to 7 ONLY"
	exit 1
fi


