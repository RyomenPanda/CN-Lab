#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 file1 file2 output_file"
    exit 1
fi

file1="$1"
file2="$2"
outfile="$3"

if [ ! -f "$file1" ]; then
    echo "Error: '$file1' does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: '$file2' does not exist."
    exit 1
fi

if [ -e "$outfile" ]; then
    echo "Error: Output file '$outfile' already exists."
    exit 1
fi

cat "$file1" "$file2" > "$outfile"

echo "Files '$file1' and '$file2' merged into '$outfile' successfully."