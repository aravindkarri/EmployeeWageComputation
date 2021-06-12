#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#constants
IS_FULL_TIME=1
IS_PART_TIME=2
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=100
EMP_RATE_PER_HR=20

#variables
totalSalary=0
totalWorkingDays=0
totalEmpHrs=0

function getWorkHrs()
{
	empCheck=$1
	case $empCheck in
                $IS_FULL_TIME)
                        empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
	echo "$empHrs"

}
function getDailyWage()
{
	empHrs=$1
	echo "$(($EMP_RATE_PER_HR*$empHrs))"
}
while [[ $totalWorkingDays -lt $MAX_WORKING_DAYS && $totalEmpHrs -lt $MAX_WORKING_HRS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	dailyWage[$totalWorkingDays]="$( getDailyWage $empHrs )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo "Employee daily wage: " ${dailyWage[@]}
echo "Employee salary for a month: " $totalSalary
