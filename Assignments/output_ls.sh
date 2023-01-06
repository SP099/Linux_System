#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

if [ $# -eq 0 ]
then
    echo *
else
    arr=($@)
    for i in ${arr[@]}
    do
        if [ -d $i ]
        then
            cd $i
            echo $i:
            echo *
        else
            echo "output_ls.sh: Cannot access ‘Test’ : No such a file or directory."
        fi
    done
fi
