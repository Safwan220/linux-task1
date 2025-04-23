#!/bin/bash

# Task 1: Create three uniquely named directories
dir1="init_project_$(date +%s | sha256sum | head -c 6)"
dir2="init_data_$(date +%s | sha256sum | head -c 6)"
dir3="init_report_$(date +%s | sha256sum | head -c 6)"

mkdir "$dir1" "$dir2" "$dir3"

# Task 2: Create two uniquely named files in each directory
for dir in "$dir1" "$dir2" "$dir3"; do
    file1="${dir}/${dir}_desc.txt"
    file2="${dir}/${dir}_info.txt"
    touch "$file1" "$file2"

    # Task 3: Add unique content to each file
    echo "This is a description file for directory $dir. It contains project-specific details." > "$file1"
    echo "Reference note for $dir: used in Linux coursework Task 1." > "$file2"
done

# Task 4: Search for the keyword "project" in all files and display results
echo "🔍 Searching for keyword 'project'..."
grep -r "project" "$dir1" "$dir2" "$dir3"

# Task 5: List contents of one directory in detail
echo "📂 Listing contents of $dir1 in detail..."
ls -l "$dir1"

# Task 6: Copy content from one file and rename it
echo "📄 Copying and renaming a file..."
cp "${dir1}/${dir1}_desc.txt" "${dir1}/${dir1}_copy.txt"

echo "✅ Script completed successfully!"
