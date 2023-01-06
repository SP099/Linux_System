#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

read -p "enter 3 numbers: " a b c
if [ $a -gt $b -a $a -gt $c ]
then
    echo "$a is larger than $b and $c"
elif [ $b -gt $c -a $b -gt $a ]
then
    echo "$b is larger than $a and $c"
elif [ $c -gt $a -a $c -gt $a ]
then
    echo "$c is larger than $a and $b"
else 
    echo "$a,$b and $c are equal"
fi


