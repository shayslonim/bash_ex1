#!/bin/bash

#Save the first argument - the file path - in the variable INPUT_PATH
INPUT_PATH=$1
#save the second argument - the word - in the variable INPUT_WORD
INPUT_WORD=$2

#Set an index integer variable to be 1
LINE_INDEX=1

#Iterate over each line of the input-file. (the last part is needed to include the last line of the file)
cat ${INPUT_PATH} | while read line || [[ -n ${line} ]]
do
    #for each word in the current line,
    for word in ${line}
    do
	    #if the current word is the input word,
        if  test ${word} = ${INPUT_WORD}
        then
            #print the line index then the line itself
            echo ${LINE_INDEX} ${line}
            #Also break the loop, so the same line won't be printed more than once
            break
        fi
   done

    #LINE_INDEX++
    LINE_INDEX=$[LINE_INDEX+1]
done