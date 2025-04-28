#!/bin/bash

echo "Enter elements separated by spaces:"
read -a array

echo "Enter element to search:"
read element

found=false
for item in "${array[@]}"; do
    if [ "$item" == "$element" ]; then
        found=true
        break
    fi
done

if $found; then
    echo "Element found in the list"
else
    echo "Element not found in the list"
fi