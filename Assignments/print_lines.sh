#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 01/12/2022
Description   : print contents of file from given line number to next given number of lines.
Sample Input  : ../print_lines.sh 5 3 myfile.txt( input must be pass through commnd line)
Sample Output : line number 5
                line number 6
                line number 7
doc

# 3 arguments must be pass through cla (1.starting line , 2.how many number of lines , 3.file_name)
# check count equal to 3 if true then check cond2
if [ $# -eq 3 ] #cond1
then 

# check file exist or not,if exist then check cond3
   if [ -f $3 ] #cond2
    then

# check file has content or empty,if true then check cond4 
       if [ -s $3 ] #cond3
        then

            tl=$(wc -l < $3)
            sum=$(($1+$2))

# check if total number of line in file must be greater or equal than the no. of lines in given arguments 
            if [ $tl -ge $sum  ] #cond4
            then
               head -$(($sum-1)) $3 | tail -$2 # print no. of lines need
            else
             echo "Error: data.txt is having only 10 lines. file should have atleast 14 lines" #print error if file has less lines
            fi 
         else
           echo "Error: myfile.txt is empty file" #print error if my is empty
         fi
    else
      echo "Error: myfile.txt file is not found" #print file not exist
    fi
else    
      echo "Error: arguments missing!" #print error if no argument pass or more than 3 argument pass or less than 3 argument pass
      echo "Usage: ./file_filter.sh start_line upto_line filename"   
      echo "For eg. ./file_filter.sh 5 5 <file>"
 fi
