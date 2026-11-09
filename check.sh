#!/bin/bash
LIMIT=80
USED=$(df / |tail -1 | awk '{print $5}' | tr -d '%')
echo "Disk used: ${USED}%"
if [ "$USED" -gt "$LIMIT" ]; then
	echo "WARNING: disk is almost full!"
else
	echo "OK: enough free space"
fi
