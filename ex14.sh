#!/bin/bash
# ex14:
# Input: A person's full name, a path to a "Bank-log" file.
# Output: All the lines that contain that person, and in the end the person's total balance.

#Save the first argument - the full name - in the variable FULL_NAME
FULL_NAME=$1
#Save the second argument - the bank file path - in the variable BANK_FILE
BANK_FILE=$2

#Initialize a sum variable to 0
SUM=0

#Print all the records that contain the name of that person (-w looks only for whole words)
grep -w "$FULL_NAME"  ${BANK_FILE}

#Get all the records that contain the wanted name,
#and in a variable called VALUES, save the list of all the money transactions -
# - which are the 3rd word of each line.
VALUES=$(grep -w "$FULL_NAME" ${BANK_FILE} | awk '{print $3}')

#For each transaction value in the list of values:
for value in ${VALUES}
do
    #Add the value to the sum.
    SUM=$[$SUM+$value]
done

#Print the total sum
echo "Total balance:" ${SUM}
