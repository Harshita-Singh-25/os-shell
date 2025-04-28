#!/bin/bash

echo "Enter temperature in Fahrenheit:"
read fahrenheit

celsius=$(echo "scale=2; ($fahrenheit - 32) * 5 / 9" | bc)
echo "$fahrenheit°F = $celsius°C"