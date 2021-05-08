#!/bin/bash
present=1
working_hrs=20
full_day=8
partime_hrs=8
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
      #echo "one  day wages is $wages"
else
      echo " absent"
fi

echo "Do u wnt prt time.... enter 1 for Yes..! 0 for No..!!"

read -p "enter the number  :" num2
if [ $num2 -eq 1 ]
then
      partime_wages=$((partime_hrs * working_hrs))
fi
total=$(($wages+$partime_wages))
echo "one  day wages is  : $wages"
echo "partime_wages is   : $partime_wages"
echo "tatal wages is    : $total"