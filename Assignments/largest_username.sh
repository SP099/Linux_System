#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 12/12/2022
Description   : Display the longest and shortest user-names on the system
Sample Input  : ./largest_username.sh 
Sample Output : The Longest Name is: speech-dispatcher
                The Shortest Name is:lp
                (Output might vary for each system)
doc

arr=(`cat /etc/passwd | cut -d ":" -f1`)  #extract username from passwd dir and store in array

large=${arr[0]}                           #store 0th index username in variable

for i in ${arr[@]}                        #initiate loop from 0 index of array to last index of array
do
    if [ ${#i} -gt ${#large} ]            #compare length of strings and length must be greater
    then
        large=$i                          #store greater length string in variable
    fi                                    #close cond
done                                      #terminate loop

echo "The Longest Name is:$large"         #display greater length string

small=${arr[0]}                           #store 0th index username in variable

for i in ${arr[@]}                        #initiate loop from 0th index of array to last index of array
do
    if [ ${#i} -lt ${#small} ]            #compare length of strings and length must be small
    then
        small=$i                          #store small length string in variable
    fi                                    #close cond
done                                      #terminate loop

echo "The Shortest Name is:$small"        #displays small length string
