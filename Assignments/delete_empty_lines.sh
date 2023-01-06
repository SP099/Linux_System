#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 04/12/2022
Description   : script to delete empty lines from a file
Sample Input  : ./delete_empty_lines.sh file.txt
Sample Output : Empty lines are deleted
                Hello
                How
                are
                you?
doc

#check count greater than 0,if equal to 0 then display error msg
if [ $# -eq 0 ]
then
    echo "Error: Please pass the file name through command line."

#check if enterd command line argument is file or not
 elif [ -f $1 ]
 then

#if file is found then delete empty lines and display result
     echo "Empty lines are deleted"
     sed '/^[[:blank:]]*$/d' $1  #blank-delete all horizontal spaces and * is used delete multiple occurences
 else

#diplay error msg if file is not found
     echo "Error: File is not found."
 fi
