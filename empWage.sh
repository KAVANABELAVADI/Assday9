#!/bin/bash -x
EMPLOYEE_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=8

workDonePerDay=0

getWorkDonePerDay()
{

        case $1 in
        0) workDonePerDay=$PART_TIME;;
        1) workDonePerDay=$FULL_TIME;;
        *) workDonePerDay=0;
        esac
        echo $workDonePerDay; #RETURN STATEMENT
}

echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2))
        if [ $attendance -eq 1 ]
        then
	     workDonePerDay=$( getWorkDonePerDay $((RANDOM%2)) );
	     dailyWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        else
          att="Absent"
        fi

