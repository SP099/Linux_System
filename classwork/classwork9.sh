#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 24/11/2022
Description   : check whether entered number is palindrome or not
Sample Input  : 121
Sample Output : 121 is a palindrome number
doc

read -p "enter number:" x
y=0
temp=$x
while [ $x -ne 0 ]
do
    let y=$y*10+$x%10
    let x=$x/10
done
if [ $y -eq $temp ]
then
    echo "$temp is a palindrome number"
else
    echo "$temp is not a palindrome number"
fi
