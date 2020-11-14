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
ZIP="$(which zip)"
#
# Just to make the backup a bit neater, we'll add the date to the archive...
DATE=$(date +%A)


STATUS="$(systemctl is-active ark.service)"

if [ "${STATUS}" = "active" ]; then
        echo "Stop the Ark Server run the Stop script!"
	exit 1
else
        echo "The Ark is Stop starting Backup..!"

	ARKSAVE=/home/steam/arkserver/ShooterGame/Saved

	BACKUPFOLDER=/home/tempark

	echo "Creating backup file..."
	mkdir $BACKUPFOLDER
	$ZIP -r $BACKUPFOLDER/ArkSave-$DATE.zip $ARKSAVE
	#tar zcvf $BACKUPFOLDER/ArkSave-$DATE.tar.gz $ARKSAVE
	echo "Backup finished and transferred!"
	echo "All done Starting Update...!"
	# Job done!
	/home/steam/scripts/update-ark.sh
#exit

fi
