#!/bin/sh -x

echo "Welcome to Employee Wage Computation Program"


employeeType=$(($$%3))

WAGEPERHOUR=20
WORKINGHOURS=8
DAYSPERMONTH=20

case $employeeType in
	1)
		echo "Employee Present"
		dailyWage=$(($WAGEPERHOUR * $WORKINGHOURS))
		echo "Employee Daily Wage is ${dailyWage}"
		echo "Employee Monthly Wage is "$(($dailyWage * $DAYSPERMONTH))
		;;
	2)
		echo "Part Time Employee Present"
		dailyWage=$(($WAGEPERHOUR * $WORKINGHOURS))
		echo "Employee Daily Wage is ${dailyWage}"
		echo "Employee Monthly Wage is "$(($dailyWage * $DAYSPERMONTH))
		;;
	*)
		echo "Employee Absent"
		exit 1
		;;
esac

echo "Enter total number of worked hours"
read workedHours

echo "Enter total number of days that employee attended"
read attendedDays

if [ $attendedDays -ge 20 ]; then
	echo "Total wages for 20 days is "$((20 * $dailyWage))
elif [ $workedHours -ge 100 ]; then
	echo "Total wages for 100 hours is "$((100 * $WAGEPERHOUR))
fi

