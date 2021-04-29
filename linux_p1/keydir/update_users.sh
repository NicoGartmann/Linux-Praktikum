#!/bin/bash

users=($(ls | grep '.pub' | sed 's/.pub$//')) # list everything from current directory, take .pub files and store filename without extension in array

userstring=""

for j in ${users[@]}; do
	userstring+="${j} "
done

sed -i "s/@demo_project_users = .*/@demo_project_users = ${userstring} /g" example.conf
