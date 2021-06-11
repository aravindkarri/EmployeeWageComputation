#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#constants
IS_FULL_TIME=1
IS_PART_TIME=2
TOTAL_WORKING_DAYS=20

#variables
empWagePerHr=20
salary=0

for ((day=1;day<=$TOTAL_WORKING_DAYS;day++))
do
	empCheck=$((RANDOM%3))
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
	dailyWage=$(($empHrs*$empWagePerHr))
	salary=$(($salary+$dailyWage))
done
echo "Employee salary for a month: " $salary
