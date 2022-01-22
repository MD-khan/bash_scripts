#!/bin/bash

# Define the max number of file 
max_number=2
count=0

# Count and assined total number of files in the firectory
total_files=`ls -1 | wc -l`

# Ecxclude the script file from the total number of files
total_files="$(($total_files-1))"

# Update the max_number
max_number="$(($total_files+2))"

while [ $count != $max_number ]
do   
    `echo "Hello There I'm file number $count" > mdKhan_$count.txt`  
    ((count++))
done
