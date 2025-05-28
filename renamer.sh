#!/bin/bash

dir="${1:-.}"
export LC_ALL=C

# Find files in depth-first order to avoid directory rename issues
find "$dir" -depth -type f | while IFS= read -r file; do
    dirpath=$(dirname "$file")
    filename=$(basename "$file")

    # Separate base and extension
    extension="${filename##*.}"
    base="${filename%.*}"

    if [[ "$base" == "$filename" ]]; then
        extension=""
    else
        extension=".$extension"
    fi

    # Normalize
    newbase=$(echo "$base" | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
    newname="${newbase}${extension}"
    newpath="${dirpath}/${newname}"

    # Only rename if names differ
    if [[ "$file" != "$newpath" ]]; then
        # Handle name conflict by appending a counter
        counter=1
        while [[ -e "$newpath" ]]; do
            newpath="${dirpath}/${newbase}_${counter}${extension}"
            ((counter++))
        done

        mv -- "$file" "$newpath"
        echo "Renamed: '$file' -> '$newpath'"
    fi
done
