#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 21/11/2022
Description   : check whether given year is leap year or not
Sample Input  : 1996
Sample Output : 1996 is leap year
doc

read -p "enter the year: " year
let y=$year%100
let e=$year%4
let a=$year%400
if [ $y -ne 0 ]
then
    if [ $e -eq 0 ]
    then
        echo "year $year is leap year"

    else
        echo "year $year not leap year"
    fi

elif [ $a -eq 0 ]
then
    echo "year $year is leap year"
 
else
    echo "year $year not leap year"
fi

