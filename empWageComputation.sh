#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#constants
IS_FULL_TIME=1
IS_PART_TIME=2

#variables
empWagePerHr=20
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
salary=$(($empHrs * $empWagePerHr))
