#!/bin/bash

arguments_error=("Not enough arguments provided, see -help for options." "Invalid number of arguments. See -help for options." "Invalid argument. See -help for options.")
integer_text=("Enter first integer: " "Enter second integer: ")

if (($# < 1)); then
	echo ${arguments_error[0]}
else
	# determinate if argument is valid
	if [ $1 == "add" ]; then
		if [ $# -eq  1 ]; then
			read -p "Enter first integer: "  n1
			read -p "Enter second integer: " n2
			result=$((n1+n2))
			echo "Result off ${n1} + ${n2} = ${result}"
		elif [ $# -eq  3 ]; then
			result=$(($2+$3))
			echo "Result off $2 + $3 = ${result}"
		else
			echo ${arguments_error[1]}
		fi
	elif [ $1 == "sub" ]; then
		if [ $# -eq 1 ]; then
			read -p "Enter first integer: " n1
			read -p "Enter second integer: " n2
			result=$((n1-n2))
			echo "Result off ${n1} - ${n2} = ${result}"
		elif [ $# -eq 3 ]; then
			result=$(($2-$3))
			echo "Result off $2 - $3 = ${result}"
		else
			echo ${arguments_error[1]}
		fi
	elif [ $1 == "mult" ]; then
		if [ $# -eq 1 ]; then
			read -p "Enter first integer: " n1
			read -p "Enter second integer: " n2
			result=$((n1*n2))
			echo "Result off ${n1} * ${n2} = ${result}"
		elif [ $# -eq 3 ]; then
			result=$(($2*$3))
			echo "Result off $2 * $3 = ${result}"
		else
			echo ${arguments_error[1]}
		fi
	elif [ $1 == "div" ]; then
		if [ $# -eq 1 ]; then
			read -p "Enter first integer: " n1
			read -p "Enter second integer: " n2
			result=$((n1/n2))
			echo "Result off ${n1} / ${n2} = ${result}"
		elif [ $# -eq 3 ]; then
			result=$(($2/$3))
			echo "Result off $2 / $3 = ${result}"
		else
			echo ${arguments_error[1]}
		fi
	elif [ $1 == "cross" ]; then
		if [ $# -eq 1 ]; then
			read -p "Enter an integer: " n1
			single_digit=0
			result=0
			begin=${n1}
			while [ $n1 -gt 0 ]; do
				single_digit=$(($n1%10))
				n1=$(($n1/10))
				result=$(($result+$single_digit))
			done
			echo "Cross sum result off ${begin} = ${result}"
		elif [ $# -eq 2 ]; then
			single_digit=0
			result=0
			n1=$2
			while [ $n1 -gt 0 ]; do
				single_digit=$(($n1%10))
				n1=$(($n1/10))
				result=$(($result+single_digit))
			done
			echo "Cross sum result off $2 = ${result}"
		else
			echo ${arguments_error[1]}
		fi
	elif [ $1 == "-help" ]; then
		echo "Calculator v1.0"
		echo "You have to provide at least one argument."
		echo "If you choose add, sub, mult or div you can optionally add two arguments."
		echo "If you choose cross, you can optionally add one argument."
	else
		echo ${arguments_error[2]}
	fi
fi
