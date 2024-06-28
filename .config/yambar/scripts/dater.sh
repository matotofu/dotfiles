#!/bin/sh

while true; do

	date=$(date +"%A %d/%m/%y")

	echo "date|string|$date"
	echo ""

	hour=$(date +'%H')
	minute=$(date +'%M')

	second=$(expr $hour \* 3600 + $minute \* 60)

	sleep "$second"
done
