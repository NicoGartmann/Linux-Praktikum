#!/bin/bash
MyArray=("Element 1" "Element 2" 42 "UpdatedContent" "AppendedContent")

for j in ${MyArray[@]}; do
	if ((${#j} < 10)); then
		echo $j
	else
		echo "Leider zu langer String"
	fi
done
