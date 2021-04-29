#!/bin/bash

users=( $(ls | grep '.pub' | sed 's/.pub$//')) # list everything from current directory, take .pub files and store filename without extension in array

for i in ${users[@]}; do
	echo $i
done
