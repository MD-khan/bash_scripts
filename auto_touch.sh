#!/bin/bash

# Find total number of files in the firectory
total_files=`ls -1 | wc -l`

# Ecxclude the this script file from the total number of files
total_files="$(($total_files-1))"

# If the inital total files count is less than 25
# We need to update files count

#counter=0
#last_number=0
max_number=25

if (( max_number <= total_files))
then
    max_number="$(($total_files+25))"
echo $max_number
fi

while [ $total_files -lt $max_number ]
do
    `touch mdKhan_$total_files`
    ((total_files++))
done

echo $total_files
