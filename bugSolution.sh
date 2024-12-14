#!/bin/bash

# This script demonstrates the corrected approach to handling filenames with spaces.

files=("file1.txt" "file2.txt" "file 3.txt")

for file in "${files[@]}"; do
  # Corrected: Using double quotes around variable to handle spaces.
  echo "Processing: " "$file"
  # Use the safer and more efficient approach
  grep "pattern" "$file" > "${file}.processed" || exit 1
done