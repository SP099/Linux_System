#!/bin/bash

<<doc
Name              : Sushant Patil
Date              : 06/12/2022
Description       : script to rename a file/directory replaced by lower/upper case letters
Sample Execution  : Before running the script
                    $ ls
                    File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/
                    $ ./file_upper_lower.sh
                    Files are rename in lowercase and directories are renamed in upper case
                    $ ls
                    file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/

doc

#store output of ls command in array
arr=(`ls`)

#initiate for loop from 0 th index of array to last index of array
for i in ${arr[@]}
do

#check for file,if file found then rename file to lower case letters
    if [ -f $i ] #cond1
    then

#store renamed file in variable which is renamed with lower case letters
        new_name=`echo $i | tr '[A-Z]' '[a-z]'`

#old name of file must be different from new name ,if true then execute cond2
        if [ $i != $new_name ] #cond2
        then

#replace old file name with new file name
            mv $i $new_name

        fi #close cond2

    fi #close cond1

#check for directory,if directory found then execute cond3 and rename dir with upper case letters
    if [ -d $i ] #cond3
    then 

#store renamed dir in vaiable which is renamed with uppercase letters
      new_name=`echo $i | tr '[a-z]' '[A-Z]'`

#old name of dir must be differ from new name
      if [ $i != $new_name ] #cond4
      then 

#replace old dir name with new dir name
        mv $i $new_name

      fi #close cond4

   fi #close cond3

done #terminate loop

#display msg for user 
echo "Files are rename in lowercase and directories are renamed in upper case"

#displays content of current working directory
ls
