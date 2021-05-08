#!/bin/bash
present=1
working_hrs=20
full_day=8
partime_hrs=8
num=$((RANDOM%2))

if [ $num -eq 1 ]
then
         echo "empolye is present"
         echo  " To find the daliy wages 1"
         echo  "To find on the partime wages only press  2"
         echo  " To find the full time wages pres 3"
            read -p "enter the number" n
            case $n in
            1)
                wages=$((working_hrs * full_day))
            ;;
            2)
                partime_wages=$((partime_hrs * working_hrs))
            ;;
            3)
                wages=$((working_hrs * full_day))
                partime_wages=$((partime_hrs * working_hrs))
            ;;
            *)
               echo "the employe is absent"
            ;;
            esac
else
      echo "employe is absent"
fi
total=$(($wages+$partime_wages))
echo "one  day wages is  : $wages"
echo "partime_wages is   : $partime_wages"
echo "tatal wages is    : $total"
