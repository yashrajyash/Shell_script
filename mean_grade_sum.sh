#!/bin/bash

: '
    2. write a shell script
    to find SUM, AVERAGE and GRADE
    from marks of FOUR subjects.
'

# Assuming full marks is 100

read -p "Enter marks for subject 1 : " marks1
read -p "Enter marks for subject 2 : " marks2
read -p "Enter marks for subject 3 : " marks3
read -p "Enter marks for subject 4 : " marks4

echo

sum=$(($marks1 + $marks2 + $marks3 + $marks4))

mean=$(($sum / 4))

((percent = $sum / 4))

echo "Sum : $sum"
printf "Average : %.2f\n" "$mean"
# echo "Percent : $percent"

if [ $percent -ge 70 ]
then
    echo "Grade A"
elif [ $percent -gt 60 ] && [$percent -lt 70]
then
    echo "Grade B"
else
    echo "Grade C"
fi