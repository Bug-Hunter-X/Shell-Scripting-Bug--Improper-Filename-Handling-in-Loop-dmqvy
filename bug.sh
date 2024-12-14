#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.

files=("file1.txt" "file2.txt" "file3.txt")

for file in "${files[@]}"; do
  # The bug is here.  If any filename contains spaces, this will fail.
  echo "Processing: $file"
  # some command to process $file...
  # This part will break if there are spaces in the filename
  grep "pattern" "$file" > "${file}.processed"
done