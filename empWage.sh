#!/bin/bash -x


echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2))
        if [ $attendance -eq 1 ]
        then
          att="present"
        else
          att="Absent"
        fi

