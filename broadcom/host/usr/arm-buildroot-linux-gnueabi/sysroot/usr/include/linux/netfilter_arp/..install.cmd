cmd_/opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp/.install := perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/netfilter_arp /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp arm arp_tables.h arpt_mangle.h; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/linux/netfilter_arp /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp arm ; perl scripts/headers_install.pl /mnt/disk_60g/iproc-toolchain/buildroot/output/build/linux-headers-3.6.5/include/generated/linux/netfilter_arp /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp/$$F; done; touch /opt/broadcom/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netfilter_arp/.install