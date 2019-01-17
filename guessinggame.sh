echo "Guessing Game"
files=$(ls -p | grep -v /$ | wc -l)
std=0
function_guessgame()
{
	while [[ $std -ne $files ]]
	do
	read -p "How many files you think are in the directory? " std
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
function_guessgame

