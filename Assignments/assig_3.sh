#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 29/11/2022
Description   : Arithmetic calculator using command line(to perform addition,substraction,multiplication,division)
Sample Input  : ./arithmatic_calc.sh 2 + 2
Sample Output : 4
doc

#check condition for count = 3 
if [ $# -eq 3 ] #cond 1
then

#if condition is true then execute case
case $2 in
      +) #Addition
        sum=$(echo "scale=2;$1+$3" | bc)
        echo "$1 $2 $3 = $sum"
        ;;
      -) #Substraction
        diff=$(echo "scale=2;$1-$3" | bc)
        echo "$1 $2 $3 = $diff"
        ;;
      x) #multiplication
        mul=$(echo "scale=2; $1*$3" | bc)
        echo "$1 $2 $3 = $mul"
        ;;
      /) #Division
        div=$(echo "scale=2; $1/$3" | bc)
        echo "$1 $2 $3 = $div"
        ;;
esac

#if count=0 and not equal to 3 
elif [ $# -eq 0 ] #cond 2
then
    echo "Error:please pass the  arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"

#if cond 1 and cond 2 is false
else
    echo "Error:please pass 3 arguments."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi
