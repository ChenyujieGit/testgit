cmd_/opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi/.install := perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/hsi /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi arm hsi_char.h; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/hsi /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/generated/linux/hsi /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi/$$F; done; touch /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/hsi/.install