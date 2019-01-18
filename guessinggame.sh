echo "Guessing Game"
files=$(ls -p | grep -v /$ | wc -l)
std=0
#function
function_guessgame()
{
	#loop
	while [[ $std -ne $files ]]
	do
	read -p "How many files you think are in the directory? " std
	#condition
	if [ $std -lt $files  ]
	then
		echo "Too low, try another"
	elif [ $std -gt $files  ]
	then
		echo "Too high, try another"
	else
		echo "Congratulations, Your guess is correct :)"
	fi
	done
}
#function call
function_guessgame

