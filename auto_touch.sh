#!/bin/bash

# Count and assined total number of files in the firectory
total_files=`ls -1 | wc -l`

# Ecxclude the script file from the total number of files
total_files="$(($total_files-1))"

# Define the max number of file 
max_number=2

# Checking the intial total files with the max number
# if max number is less than or equal total files
# So the max_number would be exiting total file count plus 2
if (( max_number <= total_files)) # for the first execution - total_files = 0
then
    max_number="$(($total_files+2))" # We wand 2 files in each execution
fi


while [ $total_files -lt $max_number ] # for the first time - $total_files = 0
    # This will create first two files with content
    # In the seceond excution, it will create next two files
    # Will not overide the pervipous file and content
do   
    `echo "Hello There I'm file number $total_files" > mdKhan_$total_files.txt`  
    ((total_files++))
done