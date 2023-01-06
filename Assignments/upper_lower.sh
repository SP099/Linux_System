#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 04/12/2022
Description   : script to convert string lower to upper and upper to lower
Sample Input  : ./upper_lower.sh file.txt
                1 – Lower to upper
                2 – Upper to lower
                Please select option : 1
Sample Output : WHAT IS OS?
                WHAT ARE THE DIFFERENT OS?
                WHEN IS OS USED?
                WHAT IS PARTITION AND ITS USE?
                HOW MANY PARTITIONS CAN BE DONE?
doc


#check count not equal to 0 for cla
if [ $# -ne 0 ] #cond1
then

#check entered cla is a file,if true then check file has content or not using file test operator
 if [ -f $1 ]  #cond2
 then

#check file has content or not,if true then convert string lower to upper and upper to lower
     if [ -s $1 ] #cond3
     then
          echo "1 – Lower to upper"
          echo "2 – Upper to lower"
          read -p "Please select option :" op

#use case statement to select option
          case $op in
             1)
                 #lower to uppercase
                 cat $1 | tr [:lower:] [:upper:]  # tr command to translate charaters from standard input and writes the result to standard output
                 ;;

             2)
                 #upeer to lowercase
                 cat $1 | tr [:upper:] [:lower:]
                 ;;

             *)
                 #if choice is not pass then displays error msg
                 echo "Error: Please enter correct option"
                 ;;

#close case statement
          esac
     else

# displays error if file has no content
       echo "Error: No contents inside the file."

 #close cond3
     fi
 else

# displays error if file has not found
     echo "Error: file is not found"

# close cond2
 fi

#displays error if cla is not passed
else
     echo "Error : Please pass the file name through command line."

#close cond1
 fi
