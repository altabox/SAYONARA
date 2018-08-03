#!/bin/bash

SEARCH="LGE Touch"
MATRIX_LEFT="0 -1 1 1 0 0 0 0 1"
MATRIX_RIGHT="0 1 0 -1 0 1 0 0 1"
MATRIX_INVERTED="-1 0 1 0 -1 1 0 0 1"
MATRIX_NORMAL="1 0 0 0 1 0 0 0 1"

if [ "$SEARCH" = "" ]; then
	exit 1
fi

if [[ $# < 1 ]]; then
	echo "Uso: set_touch [right|left|inverted|normal]"
	exit 1
fi 

ROTATE=$MATRIX_NORMAL
case $1 in
	"left") ROTATE=$MATRIX_LEFT;;
	"right") ROTATE=$MATRIX_RIGHT;;
	"inverted") ROTATE=$MATRIX_INVERTED;;
	"normal") ROTATE=$MATRIX_NORMAL;;
	*) echo "Opción $1 no válida";;
esac

ids=$(xinput --list | awk -v search="$SEARCH" \
	'$0 ~ search {match($0, /id=[0-9]+/);\
	if (RSTART) \
		print substr($0, RSTART+3, RLENGTH-3)\
	}'\
) 

for i in $ids
do
	xinput set-prop $i 'Coordinate Transformation Matrix' $ROTATE
done

