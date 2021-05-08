#!/bin/bash -x
present=1
num=$((RANDOM%2))
if [ $num -eq 1 ]
then
        echo "empolye is present"
else
         echo " absent"
fi


