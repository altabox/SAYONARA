#!/bin/sh

    PUERTO=/dev/ttyS0

    stty -F $PUERTO  9600 cs8 -cstopb -parenb
    echo "ka 0 00" > $PUERTO
