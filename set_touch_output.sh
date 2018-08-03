#!/bin/bash

SEARCH="LGE Touch"

if [ "$SEARCH" = "" ]; then
	echo "No se ha especificado un dispositivo táctil"
	exit 1
fi

if [[ $# < 1 ]]; then
	echo "USO: set_touch_output <HDMI1|HDMI2>"
	exit 1
fi


ids=$(xinput --list | awk -v search="$SEARCH" \
	'$0 ~ search {match($0, /id=[0-9]+/);\
	if (RSTART) \
		print substr($0, RSTART+3, RLENGTH-3)\
	}'\
) 

for i in $ids
do
	xinput map-to-output $i $1
done

