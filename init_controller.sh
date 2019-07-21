#!/bin/bash

if [ "`whoami`" != "root" ]; then
	echo "Need to be root."
	exit 1
fi

modprobe serio
insmod fsia6b.ko
./linuxconsole/utils/inputattach --baud 115200 --fsia6b /dev/ttyUSB0
