#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#constants
IS_FULL_TIME=1
IS_PART_TIME=2

#variables
empWagePerHr=20
empCheck=$((RANDOM%3))

if [ $empCheck -eq $IS_FULL_TIME ]
then
	empHrs=8

elif [ $empCheck -eq $IS_PART_TIME ]
then
	empHrs=4
else
	empHrs=0
fi
salary=$(($empHrs * $empWagePerHr))
