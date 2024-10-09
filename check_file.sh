#!/bin/bash

#Take user input
echo "Enter File name and extenstion. Example: fileName.txt: " 

#save user input as a variable called fileName
read fileName

#Created  a variable that checks the byte size of the file. du -b access.log= checks the size | awk prints the 1st line of the  du command 
size=$(du -b access.log | awk '{ print $1 }')

#Conditional statement that checks id the file does exist. -e  returns  True is the file exist
if [ -e $fileName ]
then
 echo "$fileName exist. The size of $fileName is $size  bytes." 
else
 echo "$fileName  does not exist"
fi
