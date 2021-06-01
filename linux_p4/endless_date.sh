#!/bin/bash

signal_handler() {
	echo "Danke fuer das Druecken von STRG + C!"
	exit
}

trap signal_handler SIGINT

while true; do
	date
	sleep 60
done
