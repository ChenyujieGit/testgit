#!/bin/bash
$(warning KERNELRELEASE = $(KERNELRELEASE))
 
ifeq ($(KERNELRELEASE),)
 
#内核的源码路径, ?= 条件赋值, uname -r 得到内核版本号
#KERNELDIR ?=  /home/mint/itop/linux_3.0
KERNELDIR ?=  /home/chenyujie/kernel
# := 立即赋值, 得到当前的绝对路径
PWD := $(shell pwd)
 
 
# -C 切换工作路径, $(MAKE) =  make
modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
 
clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions Module* modules*
 
.PHONY: modules clean
 
else
	  # 生成模块
	  obj-m = platform_driver.o
	   
	
endif

usr:
	arm-linux-gcc testchar.c -o mytest
