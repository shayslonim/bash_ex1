#!/bin/bash

#Save the first argument - the folder path - in the variable FOLDER_PATH
FOLDER_PATH=$1

#go to that folder
cd ${FOLDER_PATH}

#for every thing in the folder
for i in $(ls)
do
    #if it is a .txt file
    if  [[ ${i} == *.txt ]]
    then
        #print that it is a file
        echo ${i} "is a file"
    #else if it is a directory
    elif [[ -d "${i}" ]]
    then
        #print that it is a directory
        echo ${i} "is a directory"
	fi
done