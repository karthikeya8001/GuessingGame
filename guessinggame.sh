#!/bin/bash

# Get the number of files in the current directory
file_count=$(ls -1 | wc -l)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

# Loop until the correct guess is made
while true; do
    read -p "Enter your guess: " guess

    # Check if input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [ "$guess" -lt "$file_count" ]; then
        echo "Too low!"
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it right!"
        break
    fi
done
