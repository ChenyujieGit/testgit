cmd_/opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/.install := perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/$$F; done; touch /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/.install