#!/bin/bash

echo -n "Enter a number: "
read num

# Store the original number (important because num will change later)
original_num=$num

# Check if Even or Odd
if (( num % 2 == 0 )); then
  echo "$original_num is Even"
else
  echo "$original_num is Odd"
fi

# Check if Prime
is_prime=true
if (( num <= 1 )); then
  is_prime=false
else
  for (( i = 2; i * i <= num; i++ )); do
    if (( num % i == 0 )); then
      is_prime=false
      break
    fi
  done
fi

if $is_prime; then
  echo "$original_num is Prime"
else
  echo "$original_num is not Prime"
fi

# Check if Palindrome
reverse=0
temp=$original_num

while (( temp > 0 )); do
  digit=$(( temp % 10 ))
  reverse=$(( reverse * 10 + digit ))
  temp=$(( temp / 10 ))
done

if (( reverse == original_num )); then
  echo "$original_num is a Palindrome"
else
  echo "$original_num is not a Palindrome"
fi

# Check if Armstrong
sum=0
temp=$original_num
num_of_digits=${#original_num}

while (( temp > 0 )); do
  digit=$(( temp % 10 ))
  sum=$(( sum + digit ** num_of_digits ))
  temp=$(( temp / 10 ))
done

if (( sum == original_num )); then
  echo "$original_num is an Armstrong number"
else
  echo "$original_num is not an Armstrong number"
fi
