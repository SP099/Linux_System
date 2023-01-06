#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 17/12/2022
Description   : For each directory in the $PATH, display the number of executable files in that directory
Sample Input  : ./executable_path.sh
Sample Output : Current dir: /usr/local/sbin
                current count: 0
                Current dir: /usr/local/bin
                current count: 0
                Current dir: /usr/sbin
                current count: 205
                Current dir: /usr/bin
                current count: 1889
                Current dir: /sbin
                current count: 187
                Current dir: /bin
                current count: 159
                Current dir: /usr/games
                current count: 5
                Current dir: /usr/local/games
                current count: 0
                Total – 2445
doc

arr=(`printenv PATH | tr ":" " "`)   #stores path value into one array

total=0                              #initilize total equal to 0

for i in ${arr[@]}                   #initiate loop from first index of array to last indext of array(to check dir present or not)(1st loop)
do
    count=0                          #initilize count equal to 0

    if [ -d $i ]                     #if dir present then change the dir
    then
        cd $i
    fi
    ar=(`ls`)                        #store changed dir content in array

    for j in ${ar[@]}                #initiate loop from 1st index of array to last index(2nd loop)

    do
        if [ -x $j ]                 #if file has executable permission then increament count by 1
        then
            count=$(($count+1))
        fi                                                 
    done                             #terminate 2nd loop

    echo "current dir:$i"            #displays current dir      
    echo "current count:$count"      #displays current count
    total=$(($total+$count))         #displays total

done                                 #terminate 1st loop

echo "Total-$total"                  #displays total data
