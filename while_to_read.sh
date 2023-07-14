#!/bin/bash

# Iterate over each line of a file
while IFS= read -r line; do
    echo "$line"
    echo "1st line printed now second one"
    # Additional commands or actions if needed
done < ~/path.txt
