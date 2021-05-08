#!/bin/bash
present=1
working_hrs=20
full_day=8
num=$((RANDOM%2))
if [ $num -eq 1 ]
then
        echo "empolye is present"
else
         echo " absent"
fi

if [ $num -eq $present ]
then
		wages=$((working_hrs * full_day))
		echo "one  day wages is $wages"
else
		echo " absent"
fi
