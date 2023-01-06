#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 14/12/2022
Description   : script to determine whether a given file system or mount point is mounted
Sample Input  : ./mounted_fs.sh /dev/sda2
Sample Output : File-system /dev/sda2 is mounted on / and it is having 98% used space with 3298220 KB free.
doc

if [ $# -eq 0 ]                                    #file system name must be pass through cl if not display error(cond1)
then
    echo "Error : Please pass the name of the file-system through command line."

else                                               # else display file system mounted or not

#extract file system names,mountd info,usage and available space from disk filesystem(disk space used in filesystem) and store in arrays
    filesys=(`df | cut -d " " -f1`)                
    mount=(`df | tr -s " " | cut -d " " -f6`)     
    usage=(`df | tr -s " " | cut -d " " -f5`)
    avail=(`df | tr -s " " | cut -d " " -f4`)
    count=0                                        #initialize count=0

    for i in `seq 1 $((${#filesys[@]}-1))`         #initiate loop from 1st index of array to last index of array
    do
       
        if [ $1 = ${filesys[i]} ]                  #check entered filesystem name present or not in array(cond2)
        then
            echo "File-system $1 is mounted on ${mount[i]} and it is having ${usage[i]} used space with ${avail[i]} KB free."  #displays filesystem name ,mountd info,usage and available space
            count=1                                #initilize count=1
        fi                                         #close cond2 
    done                                           #terminate loop

    if [ $count -eq 0 ]                            #if count is equal to 0 then display file system is not mounted(cond3)
    then
        echo "$1 is not mounted."
    fi                                             #close cond3
fi                                                 #close cond1
