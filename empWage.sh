#!/bin/bash -x

EMPLOYEE_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=8
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=100

totalWage=0
workDonePerDay=0
daysPerMonth=0
hoursPerMonth=0


getWorkDonePerDay()
{

        case $1 in
        0) workDonePerDay=$PART_TIME;;
        1) workDonePerDay=$FULL_TIME;;
        *) workDonePerDay=0;
        esac
        echo $workDonePerDay; #RETURN STATEMENT
}


while ( (( daysPerMonth != MAX_NO_OF_DAYS )) && (( hoursPerMonth != MAX_NO_OF_HOURS )) )
do
        ((daysPerMonth++))
        attendance=$((RANDOM%2))
        if [ $attendance -eq 1 ]
        then
                workDonePerDay=$( getWorkDonePerDay $((RANDOM%2)) );
                hoursPerMonth=$((hoursPerMonth+workDonePerDay));
                total_working_hours=$((total_working_hours+workDonePerDay));
                dailyWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
                totalWage=$((dailyWage+totalWage));
                wages[daywage]+="Day Wage : $dailyWage    Total Wage : $totalWage  "
                wages[day]+="Day : $daysPerMonth    Day Wage : $dailyWage    Total Wage : $totalWage  "
        else
                att="Absent"
                wages[day]+="Day : $daysPerMonth    Day Wage : $att    Total Wage : $totalWage   "
        fi

done

echo ${wages[day]}
echo  ${wages[daywage]}
