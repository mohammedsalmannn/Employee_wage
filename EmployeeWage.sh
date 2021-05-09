#!/bin/bash
present=1
working_hrs=20
working_days=20
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
monthly_wages=$((total * working_days))
echo $monthly_wages

echo "one  day wages is  : $wages"
echo "partime_wages is   : $partime_wages"
echo  "one day wages including partime : $total"
echo "  Monthly wages is   :$monthly_wages "

#-------------------------------------------------------------------------------------------------

isPartTime=
isFullTime=2
empRatePerHr=20
totakSalary=0
numWorkingDays=20
for((day=1;day<=numWorkingDays;day++))
do
   empCheck=$((RANDOM%3))
   case $emCheck in
      $isFullTime)
               empHrs=8
            ;;
         $isPartTime)
            empHrs=4
            ;;
         *)
         empHrs=0
            ;;
      esac

      salary=$(($empHrs*$empRatePerHr));
      totalSalary=$(($totalSalary+$salary));
done
echo "onday day  " $salary "20days salary  " $totalSalary


MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && 
	$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
case $empCheck in
       	    $isFullTime)
	    	empHrs=8
	    	;;
	    $isPartTime)
	    	empHrs=4
		;;
	    *)
	    	empHrs=0
	     	;;
	esac
	totalEmpHrs=$(($totalEmpHrs*$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));


#To Get Work Hours
getWorkHours() {

        case $empCheck in
                $isPartTime) 
			workHours=4
			;;
                $isFullTime) 
			workHours=8;;
                *) workHours=0;;
        esac
        echo $workHours;
}

#To Store Daily Wage Along with Total wage
#calculate wage for each day
totalWorkingHours=0
totalWorkingDays=0
totalWage=0
while [[ $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        workHours=$( getWorkHours $((RANDOM%3)) );
        dailyWage=$((workHours*EMP_RATE_PER_HR));
        totalWorkingHours=$((totalWorkingHours+workHours));
        totalWage=$((totalWage+dailyWage));
done

echo "total wage - " $totalWage
echo "daily wage - " $dailyWage
