#!/bin/sh -x

echo "Welcome to Employee Wage Computation Program"


employeeType=$(($$%3))

if [ $employeeType -eq 1 ]; then
	echo "Employee Present"
elif [ $employeeType -eq 2 ]; then
	echo "Part Time Employee Present"
else
	echo "Employee Absent"
	exit 1
fi

WAGEPERHOUR=20
WORKINGHOURS=8
if [ $employeeType -eq 1 ] || [ $employeeType -eq 2 ]; then
	dailyWage=$(($WAGEPERHOUR * $WORKINGHOURS))
	echo "Employee daily wage is ${dailyWage}"
fi
