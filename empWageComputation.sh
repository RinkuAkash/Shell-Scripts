#!/bin/sh -x

echo "Welcome to Employee Wage Computation Program"


employeeType=$(($$%3))

if [ $employeeType -eq 1 ]; then
	echo "Employee Present"
elif [ $employeeType -eq 2 ]; then
	echo "Part Time Employee Present"
else
	echo "Employee Absent"
fi

