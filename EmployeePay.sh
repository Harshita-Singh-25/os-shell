#!/bin/bash

echo "Enter employee name:"
read name
echo "Enter hours worked:"
read hours
echo "Enter hourly rate:"
read rate

pay=$(echo "scale=2; $hours * $rate" | bc)
echo "$name's pay: \$$pay"