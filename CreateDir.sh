#!/bin/bash

echo -n "Enter the directory or file name: "
read name

# Check if it exists
if [ -e "$name" ]; then
  echo "'$name' already exists."
else
  # If name ends with "/", assume it is a directory
  if [[ "$name" == */ ]]; then
    mkdir -p "$name"
    echo "Directory '$name' created."
  else
    touch "$name"
    echo "File '$name' created."
  fi
fi
