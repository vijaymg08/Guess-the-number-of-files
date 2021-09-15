#!/usr/bin/env bash

function guessthefiles() {

while true;
	do
	read response
	if [[ $response == ?(-)+([0-9]) ]]
	then
		if [ $response -gt $number_of_files ]
			then
				echo "Your guess is HIGHER than Actual number. Please Guess Again"
		elif [ $response -lt $number_of_files ]
			then
				echo "Your guess is LOWER than Actual number. Please Guess Again"
		elif [ $response -eq $number_of_files ]
			then
				echo "Congratulations! Your Guess is CORRECT"
			break;
		fi
	else
		echo "You Enter Invalid Charecter. Please Guess Again"
	fi
	done
}

clear

number_of_files=$(ls . | wc -l)
echo "Please Guess the number of files in current working directory"
guessthefiles

