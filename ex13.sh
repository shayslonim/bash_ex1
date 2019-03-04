#!/bin/bash
# ex13:
# Input: A directory path, a file name
# Output: The contents of all the files with that same name as the input,
#   that are also no more than 2 levels deep in the directory tree relatively to the path.

#Save the first argument - the folder path - in the variable FOLDER_PATH
FOLDER_PATH=$1

#Save the second argument - the file name - in the variable INPUT_FILE_NAME
INPUT_FILE_NAME=$2

#go to the folder-path director
echo trying to go to ${FOLDER_PATH}
cd ${FOLDER_PATH}

#for every thing in the directory
for i in $(ls)
do
    #if i is a file
    if [[ -f ${i} ]]
    then

        #if the files have the same name
        if test ${i} = ${INPUT_FILE_NAME}
        then
            #print the contents of the file
            cat ${i}
        fi
    #else if i is a directory
    elif [[ -d ${i} ]]
    then

        #go to that directory
        cd ${i}
        #for every thing in the directory
        for j in $(ls)
	    do
	        #if it's a file and the files have the same name
	        if [[ -f ${j} ]] &&  test ${j} = ${INPUT_FILE_NAME}
	        then
	        #print the contents of the file
		    cat ${j}
		fi
	    done
	    #go back to the previous directory
	    cd ..
    fi
done