#!/bin/bash

count_files() {
    echo $(ls -1 | wc -l)
}

file_count=$(count_files)
guess=0

echo "Guess how many files are in the current directory."

while [[ $guess -ne $file_count ]]
do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_count ]]
    then
        echo "Your guess is too low."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Your guess is too high."
    else
        echo "Congratulations! You guessed correctly."
    fi
done
