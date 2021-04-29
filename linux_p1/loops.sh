#!/bin/bash

echo "While:"
i=1
while [ "$i" -lt "11" ]; do
	echo "$i"
	let "i+=1"
done

echo "for:"
for j in {1..10}; do
	echo $j
done

MyArray=("Element 1" "Element 2" 42 "UpdatedContent" "AppendedContent")
echo "print array using loop:"
for j in ${MyArray[@]}; do
	echo $j
done

