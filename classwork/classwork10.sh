#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 24/11/2022
Description   : print prime number
Sample Input  : 7
Sample Output : 7 is a prime number
doc

read -p "enter number:" n
i=2
while [ $i -lt $n ]
do
    let m=$n%$i
    if [ $m -eq 0 ]
    then
        break
    fi
       i=$(($i+1))
done
   if [ $i -eq $n ]
   then
       echo "$n is a prime number"
   else
       echo "$n is not a prime number"
   fi
