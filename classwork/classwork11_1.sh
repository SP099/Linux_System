#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

read -p "enter number:" n
for row in `seq $n -1 1`
do 
    for col in `seq $row`
    do
        echo -n "*"
    done
echo    
done

