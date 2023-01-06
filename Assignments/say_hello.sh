#!/bin/bash

<<doc
Name             : Sushant Patil
Date             : 13/12/2022
Description      : print greetings based on time
Sample execution : When we start shell (whenever you opening new tab or terminal)
                   Good Morning user, Have nice day!
                   This is Thursday 08 in June of 2017 (10:44:10 IST)
doc

hour=`date | tr -s " " | cut -d " " -f4 | cut -d ":" -f1`   #extract hour from date cmd and store in variable

user=`whoami`                                               #displays user ID and 

day=`date | cut -d " " -f1`                                 #extract date from date cmd and store in variable

date=`date | tr -s " " | cut -d " " -f3`                    #extract date from date cmd and store in variable

month=`date | tr -s " " | cut -d " " -f2`                   #extract month from date cmd and store in variable

year=`date | tr -s " " | cut -d " " -f6`                    #extract year from date and store in variable

tm=`date | tr -s " " | cut -d " " -f4`                      #extract time from date cmd and store in variable

p=`date | tr -s " " | cut -d " " -f5`                       #extract time zone 


if [ $hour -ge 5 -a $hour -lt 12 ]                          #print Good morning if hour is in between 5am to 12pm along with current user,day,date,month,year and time
then 
    echo "Good Morning $user, Have nice day!"
    echo "This is $day $date in $month of $year ($tm $p)"

elif [ $hour -ge 12 -a $hour -lt 14 ]                       #print Good noon if hour is in between 12pm to 2pm along with current user,day,date,month,year and time
then
    echo "Good noon $user, Have nice day!"
    echo "This is $day $date in $month of $year ($tm $p)"

elif [ $hour -ge 14 -a $hour -lt 17 ]                       #print Good afternoon if hour is in between 2pm to 5pm along with current user,day,date,month,year and time
then
    echo "Good afternoon $user, Have nice day!"
    echo "This is $day $date in $month of $year ($tm $p)"

elif [ $hour -ge 17 -a $hour -lt 21 ]                       #print Good evening if hour is in between 5pm to 9pm along with current user,day,date,month,year and time
then
    echo "Good Evening $user, Have nice day!"
    echo "This is $day $date in $month of $year ($tm $p)"

else                                                        #print Good night if hour is in between 9am to 5am along with current user,day,date,month,year and time
    echo "Good night $user, Have nice day!"
    echo "This is $day $date in $month of $year ($tm$p)"

fi
