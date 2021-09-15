#!/usr/bin/env bash

function guessthefiles() {

while true;
	do
	read response
	if [ $response -lt $number_of_files ]
		then
			echo "Your guess is LOWER than Actual number. Please Guess Again"
		elif [ $response -gt $number_of_files ]
		then
			echo "Your guess is HIGHER than Actual number. Please Guess Again"
		else
			echo "Congratulations! Your Guess is CORRECT"
		break;
	fi
	done
}

clear

number_of_files=$(ls . | wc -l)
echo "Please Guess the number of files in current working directory"
guessthefiles

