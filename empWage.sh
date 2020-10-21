#!/bin/bash -x
EMPLOYEE_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=8

echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2))
        if [ $attendance -eq 1 ]
        then
	emptime=$((RANDOM%2))
	if [ $emptime == 0 ]
	then
	  dailyWage=$((PART_TIME*EMPLOYEE_RATE_PER_HOUR));
	else
	   dailyWage=$((FULL_TIME*EMPLOYEE_RATE_PER_HOUR));
	fi
        else
          att="Absent"
        fi

