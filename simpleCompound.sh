#!/bin/bash

echo "Enter principal amount: "
read principal
echo "Enter annual interest rate (%): "
read rate
echo "Enter time (in years): "
read time

# Simple Interest
si=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
echo "Simple Interest: $si"

# Compound Interest
ci=$(echo "scale=2; $principal * (1 + $rate / 100) ^ $time - $principal" | bc)
echo "Compound Interest: $ci"