# Include all the Makefiles that define variables that can be useful
# within debian/rules

dpkg_datadir = /home/mk-build1/haotian/LE11_LATEST_AP/oe-core/build/tmp-glibc/sysroots/x86_64-linux/usr/share/dpkg
include $(dpkg_datadir)/architecture.mk
include $(dpkg_datadir)/buildflags.mk
include $(dpkg_datadir)/pkg-info.mk
include $(dpkg_datadir)/vendor.mk
