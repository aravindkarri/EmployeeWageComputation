#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1
empWagePerHr=20
empTotalHrs=8
empCheck=$((RANDOM%2))

if [ $empCheck -eq $isPresent ]
then
	dailyWage=$(($empWagePerHr * $empTotalHrs))
	echo "Employee dailywage is: "$dailyWage
else
	echo "Employee is absent"
fi
