import sys
import gdb

# Update module path.
dir_ = '/home/mk-build1/haotian/LE11_LATEST_AP/oe-core/build/tmp-glibc/sysroots/x86_64-linux/usr/share/glib-2.0/gdb'
if not dir_ in sys.path:
    sys.path.insert(0, dir_)

from glib import register
register (gdb.current_objfile ())
