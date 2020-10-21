#!/bin/bash -x
EMPLOYEE_RATE_PER_HOUR=20
FULL_TIME=8

echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2))
        if [ $attendance -eq 1 ]
        then
	dailyWage=$((FULL_TIME*EMPLOYEE_RATE_PER_HOUR));
        else
          att="Absent"
        fi

