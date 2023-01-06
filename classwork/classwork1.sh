#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 21/11/2022
Description   : Product of two  given numbers is odd or even
Sample Input  : 2 2
Sample Output : product of 2 and 2 is even
doc

read -p "enter two numbers: " a b
product=`expr $a \* $b`
product=`expr $product % 2`
if [ $product -eq 0 ]
then
    echo "Product of $a and $b is even"
else
    echo "Product od $a and $b is odd"
fi
