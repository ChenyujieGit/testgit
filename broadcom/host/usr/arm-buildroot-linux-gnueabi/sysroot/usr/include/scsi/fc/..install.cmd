cmd_/opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc/.install := perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/scsi/fc /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc arm fc_els.h fc_fs.h fc_gs.h fc_ns.h; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/scsi/fc /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/generated/scsi/fc /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc/$$F; done; touch /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/scsi/fc/.install