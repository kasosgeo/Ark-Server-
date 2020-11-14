#!/bin/bash


STATUS="$(systemctl is-active ark.service)"

if [ "${STATUS}" = "active" ]; then
        echo "Stop the Ark Server..!"
else
        echo "The Ark is Stop...!"
	echo "Starting Ark Server update.!!"
	/home/steam/steamcmd +login anonymous +app_update "376030 validate" +quit
	echo "Starting Ark Server..!!"
	systemctl start ark
        exit 1
fi
