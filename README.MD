# FS-iA6B iBus RC receiver
Kernel driver and support software to use a FlySky FS-iA6B 14-channel RC receiver as a general purpose game controller in Linux.

## Build instructions
* Use `make` to compile the kernel module
* Make sure to clone all submodules: `git submodule init && git submodule update`
* Apply the patches from the `patches` directory
* Compile the linuxconsole utils `cd linuxconsole; make`

## Usage instructions
* Modprobe `serio` and `fsia6b`
* Run 'linuxconsole/utils/inputattach --fsia6b /dev/ttyUSB1'

# Known issues
* Very hacky code. The controller type ID is hardcoded to 100; should be moved to serio header.
