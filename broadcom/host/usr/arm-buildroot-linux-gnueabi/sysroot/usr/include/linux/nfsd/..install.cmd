cmd_/opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd/.install := perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/nfsd /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd arm cld.h debug.h export.h nfsfh.h stats.h; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/nfsd /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/generated/linux/nfsd /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd/$$F; done; touch /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/nfsd/.install