#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 14/12/2022
Description   : Use a recursive function to print each argument passed to the function(arguments must be pass through cl)
Sample Input  : ./recursion.sh How are you? I am fine
Sample Output : How
                are
                you?
                I 
                am 
                fine
doc

if [ $# -eq 0 ]                                                #if arguments not passed through cl then print error
    then
        echo "Error : Pass the arguments through command line."

else                                                           #else argumnets are passed to function through cl then print arguments

    function print()
    {
           echo "$1"                                           #displays first cla
           arr=($@)                                            #store cla in array
           arr=(${arr[@]:1})                                   #use offset method to access particular cla
           if [ $# -gt 0 ]                                     #check if cla greater than zero
           then
              print ${arr[@]}                                  #function call inside the function
           else 
              return                                           #helps to exist from function after no cla
           fi                                                  #close condition
    }
    print $@                                                   #function call
fi                                                             #close conditon
