#!/bin/zsh
# Runs the rust program in the target folder within src that starts with the given number

# Find the target folder by the number
target_folder=$(find src -type d -name "$1*")

# Check if the target folder is given
if [ -z "$target_folder" ]; then
    echo "Please provide the target folder"
    exit 1
fi

# Check if the target folder exists
if [ ! -d "$target_folder" ]; then
    echo "The target folder does not exist"
    exit 1
fi

# Check if the target folder contains a solution file
if [ ! -f "$target_folder/solution" ]; then
    echo "The target folder does not contain a solution file"
    exit 1
fi

# Run the program
"$target_folder/solution"