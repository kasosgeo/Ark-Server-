#!/bin/bash

STATUS="$(systemctl is-active ark.service)"

if [ "${STATUS}" = "active" ]; then
	echo "Stoping the Ark Server..!"
	systemctl stop ark
	/home/steam/scripts/./backupArk.sh
else
	echo "The Ark is Stop...!"
	exit 1
fi
