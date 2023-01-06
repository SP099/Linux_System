#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 13/12/2022
Description   : Count the number of users with user IDs between given range and display(arguments must be pass through cl)
Sample Input  : ./user_ids.sh 0 100
Sample Output : Total count of user ID between 0 to 100 is : 3
doc

arr=(`cat /etc/passwd | cut -d ":" -f3`)                                      #extract user id from passwd file and store in array

count=0                                                                       #initilize count equal to 0

if [ $# -eq 0 ]                                                               #arguments must be pass through cla if cla=0 default msg should be display
then
    for i in ${arr[@]}                                                        #initiate loop from th index of array to last index of array
    do
        if [ $i -ge 500 -a $i -le 10000 ]                                     #default condition
        then
            count=$(($count+1))                                               #increament count by 1
        fi                                                                    #close cond
    done                                                                      #terminate loop
    echo "Total count of user ID between 500 to 10000 is: 2"                  #diplays dfault msg

elif [ $# -eq 2 ]                                                             #2 cla must be passed                                   
then
    if [ $1 -lt $2 ]                                                          #2nd cla must be grater than 1st cla
    then
        for i in ${arr[@]}                                                    #initiate loop from 0rth index of array to last index of array                                     
        do
            if [ $i -ge $1 -a $i -le $2 ]                                     #check for user id between enterd cla's
            then
                count=$(($count+1))                                           #increament count by 1
            fi                                                                #close condition
        done                                                                  #terminate loop
        echo "Total count of user ID between $1 to $2 is :$count"             #displays count between entered cla's
    else
        echo "Error : Invalid range. Please enter the valid range through CL." #displays error if 1st cla is greater than 2nd
    fi                                                                        #close cond
else    
    echo "Error : Please pass 2 arguments through CL."                        #if arguments not passed through cla then print error
    echo "Usage : ./user_ids.sh 100 200"
fi                                                                            #close condition
