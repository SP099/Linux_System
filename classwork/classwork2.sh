#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 21/11/2022
Description   : check whether the entered number is multiple of 5 
Sample Input  : 10
Sample Output : 10 is multiple of 5
doc

read -p "enter a number: " a

m=`expr $a % 5`

if [ $m -eq 0 ]
then
    echo "$a is multiple of 5"
else
    echo "$a is not multiple of 5"
fi
