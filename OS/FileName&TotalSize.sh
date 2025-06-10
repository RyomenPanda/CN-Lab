#!/bin/bash

echo "Files and their sizes in the current directory:"
echo "-----------------------------------------------"

total_size=0

for file in *; do
    if [ -f "$file" ]; then
        size=$(stat -c %s "$file")
        echo "$file - $size bytes"
        total_size=$((total_size + size))
    fi
done

echo "-----------------------------------------------"
echo "Total size of all files: $total_size bytes"