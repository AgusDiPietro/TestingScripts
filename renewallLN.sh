#!/bin/bash

#./script los_links_rotos_están_acá la_carpeta_renombrada

# Check for the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <new_path>"
    exit 1
fi

directory="$1"
new_path="$2"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

# Check if the new path exists
if [ ! -e "$new_path" ]; then
    echo "Error: New path '$new_path' does not exist."
    exit 1
fi

# Iterate through the files in the directory
for file in "$directory"/*; do
    if [ -L "$file" ]; then
        # Check if the symlink is broken
        if [ ! -e "$file" ]; then
            # Get the symlink name
            symlink_name=$(basename "$file")
            # Remove the broken symlink
            rm "$file"
            # Create a new symlink with the updated path
            ln -s "$new_path" "$directory/$symlink_name"
            echo "Renewed broken symlink: $symlink_name"
        fi
    fi
done

echo "Renewal complete."
