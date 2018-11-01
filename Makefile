obj-m := fsia6b.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default: fsia6b.ko
fsia6b.ko: fsia6b.c
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -f ./*.o ./*.ko ./*.mod.c modules.order Module.symvers

.phony: deploy clean
