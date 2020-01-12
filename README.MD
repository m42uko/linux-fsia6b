# FS-iA6B iBus RC receiver
Kernel driver and support software to use a FlySky FS-iA6B 14-channel RC receiver as a general purpose game controller in Linux.

## Now Part of the Mainline Kernel
As of Linux kernel 5.4 and linux-console (inputattach) 1.4.9, this driver has been mainlined.

This driver can now be found in the Linux kernel source tree in `drivers/input/joystick/fsia6b.c`.

This repository will no longer be maintained and will only serve as an archive. All future updates will be made in the Linux kernel tree exclusively.

## Usage instructions
* Connect the hardware as described [here](https://notsyncing.net/?p=blog&b=2018.linux-fsia6b)
* Modprobe `serio` and `fsia6b`
* Run `inputattach --fsia6b /dev/ttyUSBx`
