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
	echo "Stoping the Ark Server..!"
	systemctl stop ark
	/home/steam/scripts/./backupArk.sh
else
	echo "The Ark is Stop...!"
	exit 1
fi
