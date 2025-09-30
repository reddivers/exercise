#!/bin/bash
counter=0
#set -x

PATH_EXERCISES="/cygdrive/f/Andrea/division.txt"
PATH_EXERCISES_SOLUTION="/cygdrive/f/Andrea/division_loesungen.txt"

paar(){
 #
 #echo "Wert von counter: $counter"
 #
 if [ "${counter}" == "100" ]
 then
    #
    echo "Exit"
    exit
    #
 else
   #
   A=$(shuf -i 100-1000 -n 1)
   B=$(shuf -i 4-16 -n 1)
   #
   if [ "$(($A%$B))" -ne "0" ]
     then
        #
        #echo "A war: $A"
        #echo "B war: $B"
        #echo "Man kann also nicht A % B ohne Rest rechnen... erneute Ausfuehrung"
        #sleep 2
        paar
        #
     else
        #
        echo "$A / $B = "            >> /cygdrive/f/Andrea/division.txt
        echo "$A / $B = $(($A/$B))"  >> /cygdrive/f/Andrea/division_loesungen.txt
        counter=$(($counter+1))
        paar
        #
   fi
 #
 fi
}


paar
