#!/bin/bash

<<doc
Name            : Sushant Patil
Date            : 07/12/2022
Description     : script to renames the jpg files with new name passed through command line
Sample execution: Before executing the script
                  $ ls
                  DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
                  1) ./rename_album.sh day_out 
                  All .jpg files in current directory is renamed as
                  day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
                  2) ./rename_album.sh
                  Error : Please pass the prefix name through command line.
doc

#argument must be pass through command line and it is not equal to 0
if [ $# -eq 0 ] #cond1
then 

    echo "Error : Please pass the prefix name through command line."   #displays error if cla is not passed
else

    arr=(`ls *.jpg`)                                                   #else store output of ls command (only .jpg files) in array

        echo "All .jpg files in current directory is renamed as"       #display msg to user

    for i in ${arr[@]}                                                 #initiate loop starting from 0th index of array to last index of array
    do

       digit=`echo $i | tr -cd [:digit:]`                             #extract digit from .jpg file

       ext=".jpg"                                                     #store extension in variable

       new_name="$1$digit$ext"                                        #concatenate cla,digit and extension

       if [ $i != $new_name ]                                         #cond2,old name is differ from new name,if true then renamed old name to new name
       then

        mv $i $new_name                                                #rename old name with new name

       fi                                                              #close cond2

    done                                                               #terminate loop

    op=(`ls *.jpg`)                                                    #store changed output of ls command (only .jpg files) in array 

    echo "${op[@]}"                                                    #display the array content

fi                                                                     #close cond1

