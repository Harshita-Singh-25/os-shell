#!/bin/bash

echo "Enter total marks:"
read total
echo "Enter obtained marks:"
read obtained

percentage=$(echo "scale=2; $obtained * 100 / $total" | bc)

if (( $(echo "$percentage >= 90" | bc -l) )); then
    grade="A+"
elif (( $(echo "$percentage >= 80" | bc -l) )); then
    grade="A"
elif (( $(echo "$percentage >= 70" | bc -l) )); then
    grade="B"
elif (( $(echo "$percentage >= 60" | bc -l) )); then
    grade="C"
elif (( $(echo "$percentage >= 50" | bc -l) )); then
    grade="D"
else
    grade="F"
fi

echo "Percentage: $percentage%"
echo "Grade: $grade"