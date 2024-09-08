#!/bin/bash

while true; do
	if [ "$(date +"%Y")" -eq "2023" ]; then
		sudo systemctl restart ptp4l.service
		sleep 10
	else
		# time synchronized
		break
	fi
done
