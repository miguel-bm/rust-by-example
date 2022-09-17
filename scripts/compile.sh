#!/bin/zsh
# Compile rust program in the target folder within src that starts with the given number

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

# Check if the target folder contains a solution.rs file
if [ ! -f "$target_folder/solution.rs" ]; then
    echo "The target folder does not contain a solution.rs file"
    exit 1
fi

# Compile the solution.rs file with rustc
rustc "$target_folder/solution.rs" -o "$target_folder/solution"

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful"
else
    echo "Compilation failed"
fi
