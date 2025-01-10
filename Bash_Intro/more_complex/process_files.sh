#!/bin/bash

# loop through folders in current directory
for d in */ ; do
    echo "Looking in folder $d"
    # loop through all files in that folder
    for file in $d*;do
        # Check if the item is a file
        if [ -f "$file" ]; then
            # Do something with the file
            echo "Processing file: $file"
        fi
    done
done
