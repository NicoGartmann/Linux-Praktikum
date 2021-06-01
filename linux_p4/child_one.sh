#!/bin/bash

signal_handler() {
	exit
}

trap signal_handler SIGTERM

while true; do
	sleep 5
done
