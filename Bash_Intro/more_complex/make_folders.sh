#!/bin/bash

# this bash script shows how to create a random folder
# structure to use with the "more_complex.sh" script

# loop over integers 0 through 9
for((i=0;i<=5;++i)) do
    # create variable for folder name
    folder_name="folder_$i"
    # delete folder if it already exists
    rm -rf $folder_name
    # create the folder
    mkdir -p $folder_name
    # move into the folder
    cd $folder_name
    # pick a random number 0 to 10
    num_files=$((1 + $RANDOM % 5))
    # loop until that random number
    for((j=0;j<=$num_files;++j)) do
        touch "file_$j.txt"
    done
    # move back up a directory
    cd ..
done
