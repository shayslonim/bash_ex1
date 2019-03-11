#!/bin/bash
# ex12:
# Input: A folder path.
# Output: The name of each .txt file in that folder followed by "is a file",
#         and the name of each directory in the folder followed by "is a directory".

#Save the first argument - the folder path - in the variable FOLDER_PATH
FOLDER_PATH=$1

#go to that folder
cd ${FOLDER_PATH}

#--print the files--

#for every .txt file in the folder, sorted lexicographically
for i in $(ls *txt -v)
do
    #print that it is a file
    echo ${i} "is a file"
done

#--now print the directories--

#for every thing in the folder
for i in $(ls -v)
do
    #if it is a directory
    if [[ -d "${i}" ]]
    then
        #print that it is a directory
        echo ${i} "is a directory"
    fi
done
