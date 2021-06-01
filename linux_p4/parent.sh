#!/bin/bash

signal_handler() {
	exit
}

trap signal_handler SIGTERM

./child_one.sh
./child_two.sh

while true; do
	sleep 5
done
