#!/bin/bash
# ------------------------------------------------------------------
# Ark Survival Evolved world backup and update by Aerico DonDonDouk
# ------------------------------------------------------------------
#
# We're going to do a backup, then update the Ark Survival Evolved Linux Dedicated server.
#
#
#
#
# Now some system binaries...

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
