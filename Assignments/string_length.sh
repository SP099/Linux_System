#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 02/12/2022
Description   : print the length of each and every string using arrays
Sample Input  : ./string_length.sh hello hai how are you?
Sample Output : Length of string (hello) - 5
                Length of string (hai) - 3
                Length of string (how) - 3
                Length of string (are) - 3
                Length of string (you?) - 4
doc

# store elements in array
arr=($@)

#check count for not eqal to 0.if 0 then print error
if [ $# -eq 0 ]
then
  echo "Error : Please pass the arguments through command-line."

# if count not eqaul to then print length of each string
else

#initilize loop from 0 to arr_length-1
    for i in `seq 0 1 $(($#-1))`
    do

# print string with its length
        echo "Length of String (${arr[i]}) - (${#arr[i]})"

#terminate the loop        
    done

#close condition
fi

