#!/bin/bash

# Assign argument to variable
aem="$1"

#Appplying SHA-256 hashing algorithm to $argument1
hash_output=$(echo -n "$1" | sha256sum | awk '{print $1}')

#Print the output in the screen 
echo "Hash output: $hash_output"

#Overwrite the output to hash_output.txt
echo "Hash output: $hash_output" > "hash_output.txt"

