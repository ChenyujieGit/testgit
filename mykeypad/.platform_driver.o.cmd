cmd_/home/chenyujie/mykeypad/platform_driver.o := /opt/broadcom/host/usr/bin/arm-linux-gcc -Wp,-MD,/home/chenyujie/mykeypad/.platform_driver.o.d  -nostdinc -isystem /opt/broadcom/host/usr/lib/gcc/arm-buildroot-linux-gnueabi/4.7.3/include -I/home/chenyujie/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /home/chenyujie/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-iproc/include -Iarch/arm/plat-iproc/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(platform_driver)"  -D"KBUILD_MODNAME=KBUILD_STR(platform_driver)" -c -o /home/chenyujie/mykeypad/platform_driver.o /home/chenyujie/mykeypad/platform_driver.c

source_/home/chenyujie/mykeypad/platform_driver.o := /home/chenyujie/mykeypad/platform_driver.c

deps_/home/chenyujie/mykeypad/platform_driver.o := \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /home/chenyujie/kernel/arch/arm/include/asm/posix_types.h \
  include/asm-generic/posix_types.h \
  include/linux/delay.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  include/linux/sysinfo.h \
  /opt/broadcom/host/usr/lib/gcc/arm-buildroot-linux-gnueabi/4.7.3/include/stdarg.h \
  include/linux/linkage.h \
  /home/chenyujie/kernel/arch/arm/include/asm/linkage.h \
  include/linux/bitops.h \
  /home/chenyujie/kernel/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /home/chenyujie/kernel/arch/arm/include/asm/irqflags.h \
  /home/chenyujie/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /home/chenyujie/kernel/arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/chenyujie/kernel/arch/arm/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/string.h \
  include/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /home/chenyujie/kernel/arch/arm/include/asm/div64.h \
  /home/chenyujie/kernel/arch/arm/include/asm/compiler.h \
  /home/chenyujie/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/delay.h \
  /home/chenyujie/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  include/linux/const.h \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
    $(wildcard include/config/iproc/64k/page.h) \
  include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
  include/linux/kobject.h \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/sysfs.h \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/kobject_ns.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/bcm/barrier/performance.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
  /home/chenyujie/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  include/linux/stringify.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/rwlock_types.h \
  include/linux/spinlock_up.h \
  /home/chenyujie/kernel/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/hw_breakpoint.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_up.h \
  include/linux/kref.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/wait.h \
  /home/chenyujie/kernel/arch/arm/include/asm/current.h \
  include/linux/klist.h \
  include/linux/pm.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  include/linux/seqlock.h \
  include/linux/math64.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/linux/param.h \
  /home/chenyujie/kernel/arch/arm/include/asm/timex.h \
  /home/chenyujie/kernel/arch/arm/include/asm/arch_timer.h \
    $(wildcard include/config/arm/arch/timer.h) \
  arch/arm/plat-iproc/include/mach/timex.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/completion.h \
  include/linux/ratelimit.h \
  /home/chenyujie/kernel/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
  include/linux/mod_devicetable.h \
  include/linux/input.h \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/preempt/rt.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  include/linux/rcutiny.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/bit_spinlock.h \
  include/linux/path.h \
  include/linux/stat.h \
  /home/chenyujie/kernel/arch/arm/include/asm/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/radix-tree.h \
  include/linux/prio_tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
  include/linux/semaphore.h \
  include/linux/fiemap.h \
  include/linux/shrinker.h \
  include/linux/migrate_mode.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/percpu_counter.h \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/pfn.h \
  arch/arm/include/generated/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/nfs_fs_i.h \
  include/linux/fcntl.h \
  /home/chenyujie/kernel/arch/arm/include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
  include/linux/err.h \
  include/linux/irq.h \
    $(wildcard include/config/s390.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/generic/pending/irq.h) \
  include/linux/gfp.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /home/chenyujie/kernel/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/glue.h \
  /home/chenyujie/kernel/arch/arm/include/asm/pgtable-2level-types.h \
  include/asm-generic/getorder.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  include/linux/notifier.h \
  include/linux/srcu.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  /home/chenyujie/kernel/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
  arch/arm/plat-iproc/include/mach/irqs.h \
    $(wildcard include/config/mach/hx4.h) \
    $(wildcard include/config/mach/kt2.h) \
    $(wildcard include/config/mach/sb2.h) \
    $(wildcard include/config/mach/ns.h) \
    $(wildcard include/config/mach/nsp.h) \
    $(wildcard include/config/arch/require/gpiolib.h) \
    $(wildcard include/config/mach/cygnus.h) \
  arch/arm/include/generated/asm/irq_regs.h \
  include/asm-generic/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/hw_irq.h \
  include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  include/linux/hardirq.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/hardirq.h \
  include/linux/irq_cpustat.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/rbtree.h \
  include/linux/timerqueue.h \
  include/linux/module.h \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  include/linux/kmod.h \
  include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  include/linux/elf.h \
  include/linux/elf-em.h \
  /home/chenyujie/kernel/arch/arm/include/asm/elf.h \
  /home/chenyujie/kernel/arch/arm/include/asm/user.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  include/linux/static_key.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  include/linux/export.h \
    $(wildcard include/config/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  include/linux/gpio.h \
    $(wildcard include/config/generic/gpio.h) \
    $(wildcard include/config/arch/have/custom/gpio/h.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/gpio.h \
    $(wildcard include/config/arch/nr/gpio.h) \
  arch/arm/plat-iproc/include/mach/gpio.h \
  arch/arm/mach-iproc/include/mach/iproc_regs.h \
    $(wildcard include/config/mach/hr2.h) \
    $(wildcard include/config/mach/iproc/p7.h) \
    $(wildcard include/config/mach/gh.h) \
    $(wildcard include/config/iproc/gpio.h) \
    $(wildcard include/config/iproc/pwm.h) \
    $(wildcard include/config/iproc/ccb/wdt.h) \
    $(wildcard include/config/iproc/ccg/wdt.h) \
    $(wildcard include/config/iproc/sp805/wdt.h) \
    $(wildcard include/config/crmu/wdt.h) \
  arch/arm/mach-iproc/include/mach/socregs_cygnus.h \
    $(wildcard include/config/valid.h) \
    $(wildcard include/config/valid/width.h) \
    $(wildcard include/config/valid/resetvalue.h) \
    $(wildcard include/config/base.h) \
    $(wildcard include/config/offset.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/dout/l.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/dout/r.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/dout/width.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/dout/resetvalue.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/out/en/l.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/out/en/r.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/out/en/width.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/out/en/resetvalue.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/flag.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/flag/width.h) \
    $(wildcard include/config//crmu/aon/gpio/pmu/control/flag/resetvalue.h) \
    $(wildcard include/config//reserved/0/l.h) \
    $(wildcard include/config//reserved/0/r.h) \
    $(wildcard include/config//reserved/1/l.h) \
    $(wildcard include/config//reserved/1/r.h) \
    $(wildcard include/config//reserved/2/l.h) \
    $(wildcard include/config//reserved/2/r.h) \
    $(wildcard include/config//reserved/l.h) \
    $(wildcard include/config//reserved/r.h) \
    $(wildcard include/config/width.h) \
    $(wildcard include/config//width.h) \
    $(wildcard include/config/all/l.h) \
    $(wildcard include/config/all/r.h) \
    $(wildcard include/config//all/l.h) \
    $(wildcard include/config//all/r.h) \
    $(wildcard include/config/datamask.h) \
    $(wildcard include/config/resetvalue.h) \
    $(wildcard include/config//enable/tamper/reset/l.h) \
    $(wildcard include/config//enable/tamper/reset/r.h) \
    $(wildcard include/config//enable/tamper/reset/width.h) \
    $(wildcard include/config//enable/tamper/reset/resetvalue.h) \
    $(wildcard include/config//bbl/present/flag.h) \
    $(wildcard include/config//bbl/present/flag/width.h) \
    $(wildcard include/config//bbl/present/flag/resetvalue.h) \
    $(wildcard include/config//crmu/otp/strap/override/flag.h) \
    $(wildcard include/config//crmu/otp/strap/override/flag/width.h) \
    $(wildcard include/config//crmu/otp/strap/override/flag/resetvalue.h) \
    $(wildcard include/config//crmu/otp/strap/config/l.h) \
    $(wildcard include/config/l.h) \
    $(wildcard include/config//crmu/otp/strap/config/r.h) \
    $(wildcard include/config/r.h) \
    $(wildcard include/config//crmu/otp/strap/config/width.h) \
    $(wildcard include/config//crmu/otp/strap/config/resetvalue.h) \
    $(wildcard include/config/reg.h) \
    $(wildcard include/config/reg/base.h) \
    $(wildcard include/config/reg/offset.h) \
    $(wildcard include/config/reg//cdru/phy/ck25/disable.h) \
    $(wildcard include/config/reg//cdru/phy/ck25/disable/width.h) \
    $(wildcard include/config/reg//cdru/phy/ck25/disable/resetvalue.h) \
    $(wildcard include/config/reg//cdru/phy/force/dll/en.h) \
    $(wildcard include/config/reg//cdru/phy/force/dll/en/width.h) \
    $(wildcard include/config/reg//cdru/phy/force/dll/en/resetvalue.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/bias.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/bias/width.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/bias/resetvalue.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/global/pwr.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/global/pwr/width.h) \
    $(wildcard include/config/reg//cdru/phy/iddq/global/pwr/resetvalue.h) \
    $(wildcard include/config/reg//cdru/phy0/pll/refclk/sel.h) \
    $(wildcard include/config/reg//cdru/phy0/pll/refclk/sel/width.h) \
    $(wildcard include/config/reg//cdru/phy0/pll/refclk/sel/resetvalue.h) \
    $(wildcard include/config/reg//cdru/phy1/pll/refclk/sel.h) \
    $(wildcard include/config/reg//cdru/phy1/pll/refclk/sel/width.h) \
    $(wildcard include/config/reg//cdru/phy1/pll/refclk/sel/resetvalue.h) \
    $(wildcard include/config/reg//reserved/l.h) \
    $(wildcard include/config/reg//reserved/r.h) \
    $(wildcard include/config/reg/width.h) \
    $(wildcard include/config/reg//width.h) \
    $(wildcard include/config/reg/all/l.h) \
    $(wildcard include/config/reg/all/r.h) \
    $(wildcard include/config/reg//all/l.h) \
    $(wildcard include/config/reg//all/r.h) \
    $(wildcard include/config/reg/datamask.h) \
    $(wildcard include/config/reg/resetvalue.h) \
    $(wildcard include/config//cdru/rgmii/port/dup.h) \
    $(wildcard include/config//cdru/rgmii/port/dup/width.h) \
    $(wildcard include/config//cdru/rgmii/port/dup/resetvalue.h) \
    $(wildcard include/config//cdru/rgmii/port/lnk.h) \
    $(wildcard include/config//cdru/rgmii/port/lnk/width.h) \
    $(wildcard include/config//cdru/rgmii/port/lnk/resetvalue.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/rx.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/rx/width.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/rx/resetvalue.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/tx.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/tx/width.h) \
    $(wildcard include/config//cdru/rgmii/port/pausecap/tx/resetvalue.h) \
    $(wildcard include/config//cdru/rgmii/port/spd/l.h) \
    $(wildcard include/config//cdru/rgmii/port/spd/r.h) \
    $(wildcard include/config//cdru/rgmii/port/spd/width.h) \
    $(wildcard include/config//cdru/rgmii/port/spd/resetvalue.h) \
    $(wildcard include/config//cdru/switch/bypass/switch.h) \
    $(wildcard include/config//cdru/switch/bypass/switch/width.h) \
    $(wildcard include/config//cdru/switch/bypass/switch/resetvalue.h) \
    $(wildcard include/config//cdru/switch/mii1/2g/mode.h) \
    $(wildcard include/config//cdru/switch/mii1/2g/mode/width.h) \
    $(wildcard include/config//cdru/switch/mii1/2g/mode/resetvalue.h) \
    $(wildcard include/config//cdru/switch/direct/gate/port/l.h) \
    $(wildcard include/config//cdru/switch/direct/gate/port/r.h) \
    $(wildcard include/config//cdru/switch/direct/gate/port/width.h) \
    $(wildcard include/config//cdru/switch/direct/gate/port/resetvalue.h) \
    $(wildcard include/config//cdru/switch/revid/l.h) \
    $(wildcard include/config//cdru/switch/revid/r.h) \
    $(wildcard include/config//cdru/switch/revid/width.h) \
    $(wildcard include/config//cdru/switch/revid/resetvalue.h) \
    $(wildcard include/config//cdru/switch/en/eee/strap.h) \
    $(wildcard include/config//cdru/switch/en/eee/strap/width.h) \
    $(wildcard include/config//cdru/switch/en/eee/strap/resetvalue.h) \
    $(wildcard include/config//cdru/switch/hw/fwdg/en.h) \
    $(wildcard include/config//cdru/switch/hw/fwdg/en/width.h) \
    $(wildcard include/config//cdru/switch/hw/fwdg/en/resetvalue.h) \
    $(wildcard include/config//cdru/switch/led/func/mode/strap.h) \
    $(wildcard include/config//cdru/switch/led/func/mode/strap/width.h) \
    $(wildcard include/config//cdru/switch/led/func/mode/strap/resetvalue.h) \
    $(wildcard include/config//cdru/switch/ledmode/strap/l.h) \
    $(wildcard include/config//cdru/switch/ledmode/strap/r.h) \
    $(wildcard include/config//cdru/switch/ledmode/strap/width.h) \
    $(wildcard include/config//cdru/switch/ledmode/strap/resetvalue.h) \
    $(wildcard include/config//cdru/switch/pd/rdt/l.h) \
    $(wildcard include/config//cdru/switch/pd/rdt/r.h) \
    $(wildcard include/config//cdru/switch/pd/rdt/width.h) \
    $(wildcard include/config//cdru/switch/pd/rdt/resetvalue.h) \
    $(wildcard include/config//cdru/switch/pd/wbt/l.h) \
    $(wildcard include/config//cdru/switch/pd/wbt/r.h) \
    $(wildcard include/config//cdru/switch/pd/wbt/width.h) \
    $(wildcard include/config//cdru/switch/pd/wbt/resetvalue.h) \
    $(wildcard include/config//cdru/switch/rf/rdt/l.h) \
    $(wildcard include/config//cdru/switch/rf/rdt/r.h) \
    $(wildcard include/config//cdru/switch/rf/rdt/width.h) \
    $(wildcard include/config//cdru/switch/rf/rdt/resetvalue.h) \
    $(wildcard include/config//cdru/switch/rf/wbt/l.h) \
    $(wildcard include/config//cdru/switch/rf/wbt/r.h) \
    $(wildcard include/config//cdru/switch/rf/wbt/width.h) \
    $(wildcard include/config//cdru/switch/rf/wbt/resetvalue.h) \
    $(wildcard include/config//cdru/switch/sp/rdt/l.h) \
    $(wildcard include/config//cdru/switch/sp/rdt/r.h) \
    $(wildcard include/config//cdru/switch/sp/rdt/width.h) \
    $(wildcard include/config//cdru/switch/sp/rdt/resetvalue.h) \
    $(wildcard include/config//cdru/switch/sp/wbt/l.h) \
    $(wildcard include/config//cdru/switch/sp/wbt/r.h) \
    $(wildcard include/config//cdru/switch/sp/wbt/width.h) \
    $(wildcard include/config//cdru/switch/sp/wbt/resetvalue.h) \
    $(wildcard include/config//strap/iproc/amac0/en/autoconfig.h) \
    $(wildcard include/config//strap/iproc/amac0/en/autoconfig/width.h) \
    $(wildcard include/config//strap/iproc/amac0/en/autoconfig/resetvalue.h) \
    $(wildcard include/config//strap/iproc/amac0/eee/en.h) \
    $(wildcard include/config//strap/iproc/amac0/eee/en/width.h) \
    $(wildcard include/config//strap/iproc/amac0/eee/en/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/hys/en.h) \
    $(wildcard include/config//iomux/rgmii/hys/en/width.h) \
    $(wildcard include/config//iomux/rgmii/hys/en/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/drv/sel/l.h) \
    $(wildcard include/config//iomux/rgmii/drv/sel/r.h) \
    $(wildcard include/config//iomux/rgmii/drv/sel/width.h) \
    $(wildcard include/config//iomux/rgmii/drv/sel/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/slewr.h) \
    $(wildcard include/config//iomux/rgmii/slewr/width.h) \
    $(wildcard include/config//iomux/rgmii/slewr/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/pup.h) \
    $(wildcard include/config//iomux/rgmii/pup/width.h) \
    $(wildcard include/config//iomux/rgmii/pup/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/pdn.h) \
    $(wildcard include/config//iomux/rgmii/pdn/width.h) \
    $(wildcard include/config//iomux/rgmii/pdn/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/amp/en.h) \
    $(wildcard include/config//iomux/rgmii/amp/en/width.h) \
    $(wildcard include/config//iomux/rgmii/amp/en/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/ind.h) \
    $(wildcard include/config//iomux/rgmii/ind/width.h) \
    $(wildcard include/config//iomux/rgmii/ind/resetvalue.h) \
    $(wildcard include/config//iomux/rgmii/gmii/sel.h) \
    $(wildcard include/config//iomux/rgmii/gmii/sel/width.h) \
    $(wildcard include/config//iomux/rgmii/gmii/sel/resetvalue.h) \
    $(wildcard include/config//cdru/bsc1/sda/dg/en.h) \
    $(wildcard include/config//cdru/bsc1/sda/dg/en/width.h) \
    $(wildcard include/config//cdru/bsc1/sda/dg/en/resetvalue.h) \
    $(wildcard include/config//cdru/bsc0/sda/dg/en.h) \
    $(wildcard include/config//cdru/bsc0/sda/dg/en/width.h) \
    $(wildcard include/config//cdru/bsc0/sda/dg/en/resetvalue.h) \
    $(wildcard include/config//cdru/bsc1/scl/dg/en.h) \
    $(wildcard include/config//cdru/bsc1/scl/dg/en/width.h) \
    $(wildcard include/config//cdru/bsc1/scl/dg/en/resetvalue.h) \
    $(wildcard include/config//cdru/bsc0/scl/dg/en.h) \
    $(wildcard include/config//cdru/bsc0/scl/dg/en/width.h) \
    $(wildcard include/config//cdru/bsc0/scl/dg/en/resetvalue.h) \
    $(wildcard include/config//cdru/mode/5v/bsc1.h) \
    $(wildcard include/config//cdru/mode/5v/bsc1/width.h) \
    $(wildcard include/config//cdru/mode/5v/bsc1/resetvalue.h) \
    $(wildcard include/config//cdru/mode/5v/bsc0.h) \
    $(wildcard include/config//cdru/mode/5v/bsc0/width.h) \
    $(wildcard include/config//cdru/mode/5v/bsc0/resetvalue.h) \
    $(wildcard include/config//cdru/usb/vbus/5v/mode.h) \
    $(wildcard include/config//cdru/usb/vbus/5v/mode/width.h) \
    $(wildcard include/config//cdru/usb/vbus/5v/mode/resetvalue.h) \
    $(wildcard include/config//chip/test/mode/l.h) \
    $(wildcard include/config//chip/test/mode/r.h) \
    $(wildcard include/config//chip/test/mode/width.h) \
    $(wildcard include/config//chip/test/mode/resetvalue.h) \
    $(wildcard include/config//cdru/mode/5v/pcie1.h) \
    $(wildcard include/config//cdru/mode/5v/pcie1/width.h) \
    $(wildcard include/config//cdru/mode/5v/pcie1/resetvalue.h) \
    $(wildcard include/config//cdru/mode/5v/pcie0.h) \
    $(wildcard include/config//cdru/mode/5v/pcie0/width.h) \
    $(wildcard include/config//cdru/mode/5v/pcie0/resetvalue.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli1.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli1/width.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli1/resetvalue.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli0.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli0/width.h) \
    $(wildcard include/config//crmu/iproc/ihost/pwrctli0/resetvalue.h) \
    $(wildcard include/config//master/axi/aruser/8/4/l.h) \
    $(wildcard include/config//master/axi/aruser/8/4/r.h) \
    $(wildcard include/config//master/axi/aruser/8/4/width.h) \
    $(wildcard include/config//master/axi/aruser/8/4/resetvalue.h) \
    $(wildcard include/config//master/axi/araddr/32.h) \
    $(wildcard include/config//master/axi/araddr/32/width.h) \
    $(wildcard include/config//master/axi/araddr/32/resetvalue.h) \
    $(wildcard include/config//master/axi/awuser/8/4/l.h) \
    $(wildcard include/config//master/axi/awuser/8/4/r.h) \
    $(wildcard include/config//master/axi/awuser/8/4/width.h) \
    $(wildcard include/config//master/axi/awuser/8/4/resetvalue.h) \
    $(wildcard include/config//master/axi/awaddr/32.h) \
    $(wildcard include/config//master/axi/awaddr/32/width.h) \
    $(wildcard include/config//master/axi/awaddr/32/resetvalue.h) \
    $(wildcard include/config//reserved/3/l.h) \
    $(wildcard include/config//reserved/3/r.h) \
    $(wildcard include/config/ecc/rtic/enable.h) \
    $(wildcard include/config/ecc/rtic/enable/base.h) \
    $(wildcard include/config/ecc/rtic/enable/offset.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/chip/fid/check.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/chip/fid/check/width.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/chip/fid/check/resetvalue.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/crmu/fid/check.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/crmu/fid/check/width.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/crmu/fid/check/resetvalue.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/rtic/check.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/rtic/check/width.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/rtic/check/resetvalue.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/ecc/check.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/ecc/check/width.h) \
    $(wildcard include/config/ecc/rtic/enable//enable/ecc/check/resetvalue.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/0/l.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/0/r.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/1/l.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/1/r.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/2/l.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/2/r.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/3/l.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/3/r.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/l.h) \
    $(wildcard include/config/ecc/rtic/enable//reserved/r.h) \
    $(wildcard include/config/ecc/rtic/enable/width.h) \
    $(wildcard include/config/ecc/rtic/enable//width.h) \
    $(wildcard include/config/ecc/rtic/enable/all/l.h) \
    $(wildcard include/config/ecc/rtic/enable/all/r.h) \
    $(wildcard include/config/ecc/rtic/enable//all/l.h) \
    $(wildcard include/config/ecc/rtic/enable//all/r.h) \
    $(wildcard include/config/ecc/rtic/enable/datamask.h) \
    $(wildcard include/config/ecc/rtic/enable/resetvalue.h) \
    $(wildcard include/config//vsocnt/sat/clr.h) \
    $(wildcard include/config//vsocnt/sat/clr/width.h) \
    $(wildcard include/config//vsocnt/sat/clr/resetvalue.h) \
    $(wildcard include/config//vgm/en.h) \
    $(wildcard include/config//vgm/en/width.h) \
    $(wildcard include/config//vgm/en/resetvalue.h) \
    $(wildcard include/config//fil/clr.h) \
    $(wildcard include/config//fil/clr/width.h) \
    $(wildcard include/config//fil/clr/resetvalue.h) \
    $(wildcard include/config//fil/en.h) \
    $(wildcard include/config//fil/en/width.h) \
    $(wildcard include/config//fil/en/resetvalue.h) \
    $(wildcard include/config//vso/control/l.h) \
    $(wildcard include/config//vso/control/r.h) \
    $(wildcard include/config//vso/control/width.h) \
    $(wildcard include/config//vso/control/resetvalue.h) \
    $(wildcard include/config//bbl/mesh/clr.h) \
    $(wildcard include/config//bbl/mesh/clr/width.h) \
    $(wildcard include/config//bbl/mesh/clr/resetvalue.h) \
    $(wildcard include/config//en/extmesh/dyn.h) \
    $(wildcard include/config//en/extmesh/dyn/width.h) \
    $(wildcard include/config//en/extmesh/dyn/resetvalue.h) \
    $(wildcard include/config//en/extmesh/fc.h) \
    $(wildcard include/config//en/extmesh/fc/width.h) \
    $(wildcard include/config//en/extmesh/fc/resetvalue.h) \
    $(wildcard include/config//en/extmesh/i/l.h) \
    $(wildcard include/config//en/extmesh/i/r.h) \
    $(wildcard include/config//en/extmesh/i/width.h) \
    $(wildcard include/config//en/extmesh/i/resetvalue.h) \
    $(wildcard include/config//en/extmesh/o/l.h) \
    $(wildcard include/config//en/extmesh/o/r.h) \
    $(wildcard include/config//en/extmesh/o/width.h) \
    $(wildcard include/config//en/extmesh/o/resetvalue.h) \
    $(wildcard include/config//en/extmesh/l.h) \
    $(wildcard include/config//en/extmesh/r.h) \
    $(wildcard include/config//en/extmesh/width.h) \
    $(wildcard include/config//en/extmesh/resetvalue.h) \
    $(wildcard include/config/1.h) \
    $(wildcard include/config/1/base.h) \
    $(wildcard include/config/1/offset.h) \
    $(wildcard include/config/1//emesh/filter1/l.h) \
    $(wildcard include/config/1//emesh/filter1/r.h) \
    $(wildcard include/config/1//emesh/filter1/width.h) \
    $(wildcard include/config/1//emesh/filter1/resetvalue.h) \
    $(wildcard include/config/1//emesh/filter0/l.h) \
    $(wildcard include/config/1//emesh/filter0/r.h) \
    $(wildcard include/config/1//emesh/filter0/width.h) \
    $(wildcard include/config/1//emesh/filter0/resetvalue.h) \
    $(wildcard include/config/1//emesh/fil/sel/l.h) \
    $(wildcard include/config/1//emesh/fil/sel/r.h) \
    $(wildcard include/config/1//emesh/fil/sel/width.h) \
    $(wildcard include/config/1//emesh/fil/sel/resetvalue.h) \
    $(wildcard include/config/1//disable/emesh/filter.h) \
    $(wildcard include/config/1//disable/emesh/filter/width.h) \
    $(wildcard include/config/1//disable/emesh/filter/resetvalue.h) \
    $(wildcard include/config/1//emesh/mfm/en.h) \
    $(wildcard include/config/1//emesh/mfm/en/width.h) \
    $(wildcard include/config/1//emesh/mfm/en/resetvalue.h) \
    $(wildcard include/config/1//en/pull/dn.h) \
    $(wildcard include/config/1//en/pull/dn/width.h) \
    $(wildcard include/config/1//en/pull/dn/resetvalue.h) \
    $(wildcard include/config/1//en/pull/up.h) \
    $(wildcard include/config/1//en/pull/up/width.h) \
    $(wildcard include/config/1//en/pull/up/resetvalue.h) \
    $(wildcard include/config/1//en/bblclk/o0.h) \
    $(wildcard include/config/1//en/bblclk/o0/width.h) \
    $(wildcard include/config/1//en/bblclk/o0/resetvalue.h) \
    $(wildcard include/config/1//reserved/l.h) \
    $(wildcard include/config/1//reserved/r.h) \
    $(wildcard include/config/1/width.h) \
    $(wildcard include/config/1//width.h) \
    $(wildcard include/config/1/all/l.h) \
    $(wildcard include/config/1/all/r.h) \
    $(wildcard include/config/1//all/l.h) \
    $(wildcard include/config/1//all/r.h) \
    $(wildcard include/config/1/datamask.h) \
    $(wildcard include/config/1/resetvalue.h) \
    $(wildcard include/config//imesh/mfm/en.h) \
    $(wildcard include/config//imesh/mfm/en/width.h) \
    $(wildcard include/config//imesh/mfm/en/resetvalue.h) \
    $(wildcard include/config//en/mesh/dyn.h) \
    $(wildcard include/config//mesh/mfm/en.h) \
    $(wildcard include/config//mesh/mfm/en/width.h) \
    $(wildcard include/config//mesh/mfm/en/resetvalue.h) \
    $(wildcard include/config//en/mesh/dyn/width.h) \
    $(wildcard include/config//en/mesh/dyn/resetvalue.h) \
    $(wildcard include/config//en/intmesh/fc.h) \
    $(wildcard include/config//en/intmesh/fc/width.h) \
    $(wildcard include/config//en/intmesh/fc/resetvalue.h) \
    $(wildcard include/config//lfsr/sw/prog/tap.h) \
    $(wildcard include/config//lfsr/sw/prog/tap/width.h) \
    $(wildcard include/config//lfsr/sw/prog/tap/resetvalue.h) \
    $(wildcard include/config//lfsr/avd/stuck.h) \
    $(wildcard include/config//lfsr/avd/stuck/width.h) \
    $(wildcard include/config//lfsr/avd/stuck/resetvalue.h) \
    $(wildcard include/config//lfsr/period/l.h) \
    $(wildcard include/config//lfsr/period/r.h) \
    $(wildcard include/config//lfsr/period/width.h) \
    $(wildcard include/config//lfsr/period/resetvalue.h) \
    $(wildcard include/config//ecc/en.h) \
    $(wildcard include/config//ecc/en/width.h) \
    $(wildcard include/config//ecc/en/resetvalue.h) \
    $(wildcard include/config//bitflip/cmd.h) \
    $(wildcard include/config//bitflip/cmd/width.h) \
    $(wildcard include/config//bitflip/cmd/resetvalue.h) \
    $(wildcard include/config//bitflip/period/l.h) \
    $(wildcard include/config//bitflip/period/r.h) \
    $(wildcard include/config//bitflip/period/width.h) \
    $(wildcard include/config//bitflip/period/resetvalue.h) \
    $(wildcard include/config//sec1280/rawdata.h) \
    $(wildcard include/config//sec1280/rawdata/width.h) \
    $(wildcard include/config//sec1280/rawdata/resetvalue.h) \
    $(wildcard include/config//ckgate/override.h) \
    $(wildcard include/config//ckgate/override/width.h) \
    $(wildcard include/config//ckgate/override/resetvalue.h) \
    $(wildcard include/config//bitflip/en.h) \
    $(wildcard include/config//bitflip/en/width.h) \
    $(wildcard include/config//bitflip/en/resetvalue.h) \
    $(wildcard include/config//bbl/alarm/pol.h) \
    $(wildcard include/config//bbl/alarm/pol/width.h) \
    $(wildcard include/config//bbl/alarm/pol/resetvalue.h) \
    $(wildcard include/config//bbl/alarm/mask.h) \
    $(wildcard include/config//bbl/alarm/mask/width.h) \
    $(wildcard include/config//bbl/alarm/mask/resetvalue.h) \
    $(wildcard include/config//bbl/alarm/cmos.h) \
    $(wildcard include/config//bbl/alarm/cmos/width.h) \
    $(wildcard include/config//bbl/alarm/cmos/resetvalue.h) \
    $(wildcard include/config/1//fid/soft/rst/n.h) \
    $(wildcard include/config/1//fid/soft/rst/n/width.h) \
    $(wildcard include/config/1//fid/soft/rst/n/resetvalue.h) \
    $(wildcard include/config/1//dly/src/sel/l.h) \
    $(wildcard include/config/1//dly/src/sel/r.h) \
    $(wildcard include/config/1//dly/src/sel/width.h) \
    $(wildcard include/config/1//dly/src/sel/resetvalue.h) \
    $(wildcard include/config/1//l1/rst/mask.h) \
    $(wildcard include/config/1//l1/rst/mask/width.h) \
    $(wildcard include/config/1//l1/rst/mask/resetvalue.h) \
    $(wildcard include/config/1//test/isolate.h) \
    $(wildcard include/config/1//test/isolate/width.h) \
    $(wildcard include/config/1//test/isolate/resetvalue.h) \
    $(wildcard include/config/1//test/clear.h) \
    $(wildcard include/config/1//test/clear/width.h) \
    $(wildcard include/config/1//test/clear/resetvalue.h) \
    $(wildcard include/config/1//reg/clk/en.h) \
    $(wildcard include/config/1//reg/clk/en/width.h) \
    $(wildcard include/config/1//reg/clk/en/resetvalue.h) \
    $(wildcard include/config/1//sec1280/clr.h) \
    $(wildcard include/config/1//sec1280/clr/width.h) \
    $(wildcard include/config/1//sec1280/clr/resetvalue.h) \
    $(wildcard include/config/1//soft/rst.h) \
    $(wildcard include/config/1//soft/rst/width.h) \
    $(wildcard include/config/1//soft/rst/resetvalue.h) \
    $(wildcard include/config//min/lim/l.h) \
    $(wildcard include/config//min/lim/r.h) \
    $(wildcard include/config//min/lim/width.h) \
    $(wildcard include/config//min/lim/resetvalue.h) \
    $(wildcard include/config//max/lim/l.h) \
    $(wildcard include/config//max/lim/r.h) \
    $(wildcard include/config//max/lim/width.h) \
    $(wildcard include/config//max/lim/resetvalue.h) \
    $(wildcard include/config//delta/lim/l.h) \
    $(wildcard include/config//delta/lim/r.h) \
    $(wildcard include/config//delta/lim/width.h) \
    $(wildcard include/config//delta/lim/resetvalue.h) \
    $(wildcard include/config//twarn/dir.h) \
    $(wildcard include/config//twarn/dir/width.h) \
    $(wildcard include/config//twarn/dir/resetvalue.h) \
    $(wildcard include/config//temp/pwrdn.h) \
    $(wildcard include/config//temp/pwrdn/width.h) \
    $(wildcard include/config//temp/pwrdn/resetvalue.h) \
    $(wildcard include/config/1//tmon/samp/l.h) \
    $(wildcard include/config/1//tmon/samp/r.h) \
    $(wildcard include/config/1//tmon/samp/width.h) \
    $(wildcard include/config/1//tmon/samp/resetvalue.h) \
    $(wildcard include/config/1//twarn/wakeup.h) \
    $(wildcard include/config/1//twarn/wakeup/width.h) \
    $(wildcard include/config/1//twarn/wakeup/resetvalue.h) \
    $(wildcard include/config/1//twarn/clr.h) \
    $(wildcard include/config/1//twarn/clr/width.h) \
    $(wildcard include/config/1//twarn/clr/resetvalue.h) \
    $(wildcard include/config/1//temp/ctrl/l.h) \
    $(wildcard include/config/1//temp/ctrl/r.h) \
    $(wildcard include/config/1//temp/ctrl/width.h) \
    $(wildcard include/config/1//temp/ctrl/resetvalue.h) \
    $(wildcard include/config/1//twarn/temp/l.h) \
    $(wildcard include/config/1//twarn/temp/r.h) \
    $(wildcard include/config/1//twarn/temp/width.h) \
    $(wildcard include/config/1//twarn/temp/resetvalue.h) \
    $(wildcard include/config/1//temp/sample/rate/l.h) \
    $(wildcard include/config/1//temp/sample/rate/r.h) \
    $(wildcard include/config/1//temp/sample/rate/width.h) \
    $(wildcard include/config/1//temp/sample/rate/resetvalue.h) \
    $(wildcard include/config//hys/en.h) \
    $(wildcard include/config//hys/en/width.h) \
    $(wildcard include/config//hys/en/resetvalue.h) \
    $(wildcard include/config//tamper/out/drive/sel/l.h) \
    $(wildcard include/config//tamper/out/drive/sel/r.h) \
    $(wildcard include/config//tamper/out/drive/sel/width.h) \
    $(wildcard include/config//tamper/out/drive/sel/resetvalue.h) \
    $(wildcard include/config//alarm/drive/sel/l.h) \
    $(wildcard include/config//alarm/drive/sel/r.h) \
    $(wildcard include/config//alarm/drive/sel/width.h) \
    $(wildcard include/config//alarm/drive/sel/resetvalue.h) \
    $(wildcard include/config//ind/unattended/mode.h) \
    $(wildcard include/config//ind/unattended/mode/width.h) \
    $(wildcard include/config//ind/unattended/mode/resetvalue.h) \
    $(wildcard include/config//ind.h) \
    $(wildcard include/config//ind/width.h) \
    $(wildcard include/config//ind/resetvalue.h) \
    $(wildcard include/config//drive/sel/l.h) \
    $(wildcard include/config//drive/sel/r.h) \
    $(wildcard include/config//drive/sel/width.h) \
    $(wildcard include/config//drive/sel/resetvalue.h) \
    $(wildcard include/config//reserved.h) \
    $(wildcard include/config//tamper/immesh/p0.h) \
    $(wildcard include/config//tamper/immesh/p0/width.h) \
    $(wildcard include/config//tamper/immesh/p0/resetvalue.h) \
    $(wildcard include/config//tmon/dbg/pwrdn.h) \
    $(wildcard include/config//tmon/dbg/pwrdn/width.h) \
    $(wildcard include/config//tmon/dbg/pwrdn/resetvalue.h) \
    $(wildcard include/config//tmon/dbg/rstb.h) \
    $(wildcard include/config//tmon/dbg/rstb/width.h) \
    $(wildcard include/config//tmon/dbg/rstb/resetvalue.h) \
    $(wildcard include/config//ib/ctrl/l.h) \
    $(wildcard include/config//ib/ctrl/r.h) \
    $(wildcard include/config//ib/ctrl/width.h) \
    $(wildcard include/config//ib/ctrl/resetvalue.h) \
    $(wildcard include/config//c2/ctrl/l.h) \
    $(wildcard include/config//c2/ctrl/r.h) \
    $(wildcard include/config//c2/ctrl/width.h) \
    $(wildcard include/config//c2/ctrl/resetvalue.h) \
    $(wildcard include/config//c1/ctrl/l.h) \
    $(wildcard include/config//c1/ctrl/r.h) \
    $(wildcard include/config//c1/ctrl/width.h) \
    $(wildcard include/config//c1/ctrl/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/base.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/offset.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//reserved/l.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//reserved/r.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//reserved/width.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//reserved/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//pvtmon/ctrl/l.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//pvtmon/ctrl/r.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//pvtmon/ctrl/width.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//pvtmon/ctrl/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/width.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//width.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/all/l.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/all/r.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//all/l.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg//all/r.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/datamask.h) \
    $(wildcard include/config/pvt/mntr/ctrl/reg/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/base.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/offset.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//reserved/l.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//reserved/r.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//reserved/width.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//reserved/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//tp/mode/en.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//tp/mode/en/width.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//tp/mode/en/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/width.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//width.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/all/l.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/all/r.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//all/l.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg//all/r.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/datamask.h) \
    $(wildcard include/config/pvt/mntr/tp/mode/enable/reg/resetvalue.h) \
    $(wildcard include/config/dac/code/programming/enable/reg.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/base.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/offset.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//reserved/l.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//reserved/r.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//reserved/width.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//reserved/resetvalue.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//code/program/en.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//code/program/en/width.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//code/program/en/resetvalue.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/width.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//width.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/all/l.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/all/r.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//all/l.h) \
    $(wildcard include/config/dac/code/programming/enable/reg//all/r.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/datamask.h) \
    $(wildcard include/config/dac/code/programming/enable/reg/resetvalue.h) \
    $(wildcard include/config/dac/code/reg.h) \
    $(wildcard include/config/dac/code/reg/base.h) \
    $(wildcard include/config/dac/code/reg/offset.h) \
    $(wildcard include/config/dac/code/reg//reserved/l.h) \
    $(wildcard include/config/dac/code/reg//reserved/r.h) \
    $(wildcard include/config/dac/code/reg//reserved/width.h) \
    $(wildcard include/config/dac/code/reg//reserved/resetvalue.h) \
    $(wildcard include/config/dac/code/reg//dac/code/l.h) \
    $(wildcard include/config/dac/code/reg//dac/code/r.h) \
    $(wildcard include/config/dac/code/reg//dac/code/width.h) \
    $(wildcard include/config/dac/code/reg//dac/code/resetvalue.h) \
    $(wildcard include/config/dac/code/reg/width.h) \
    $(wildcard include/config/dac/code/reg//width.h) \
    $(wildcard include/config/dac/code/reg/all/l.h) \
    $(wildcard include/config/dac/code/reg/all/r.h) \
    $(wildcard include/config/dac/code/reg//all/l.h) \
    $(wildcard include/config/dac/code/reg//all/r.h) \
    $(wildcard include/config/dac/code/reg/datamask.h) \
    $(wildcard include/config/dac/code/reg/resetvalue.h) \
    $(wildcard include/config/min/dac/code/reg.h) \
    $(wildcard include/config/min/dac/code/reg/base.h) \
    $(wildcard include/config/min/dac/code/reg/offset.h) \
    $(wildcard include/config/min/dac/code/reg//reserved/l.h) \
    $(wildcard include/config/min/dac/code/reg//reserved/r.h) \
    $(wildcard include/config/min/dac/code/reg//reserved/width.h) \
    $(wildcard include/config/min/dac/code/reg//reserved/resetvalue.h) \
    $(wildcard include/config/min/dac/code/reg//min/dac/code/l.h) \
    $(wildcard include/config/min/dac/code/reg//min/dac/code/r.h) \
    $(wildcard include/config/min/dac/code/reg//min/dac/code/width.h) \
    $(wildcard include/config/min/dac/code/reg//min/dac/code/resetvalue.h) \
    $(wildcard include/config/min/dac/code/reg/width.h) \
    $(wildcard include/config/min/dac/code/reg//width.h) \
    $(wildcard include/config/min/dac/code/reg/all/l.h) \
    $(wildcard include/config/min/dac/code/reg/all/r.h) \
    $(wildcard include/config/min/dac/code/reg//all/l.h) \
    $(wildcard include/config/min/dac/code/reg//all/r.h) \
    $(wildcard include/config/min/dac/code/reg/datamask.h) \
    $(wildcard include/config/min/dac/code/reg/resetvalue.h) \
    $(wildcard include/config/max/dac/code/reg.h) \
    $(wildcard include/config/max/dac/code/reg/base.h) \
    $(wildcard include/config/max/dac/code/reg/offset.h) \
    $(wildcard include/config/max/dac/code/reg//reserved/l.h) \
    $(wildcard include/config/max/dac/code/reg//reserved/r.h) \
    $(wildcard include/config/max/dac/code/reg//reserved/width.h) \
    $(wildcard include/config/max/dac/code/reg//reserved/resetvalue.h) \
    $(wildcard include/config/max/dac/code/reg//max/dac/code/l.h) \
    $(wildcard include/config/max/dac/code/reg//max/dac/code/r.h) \
    $(wildcard include/config/max/dac/code/reg//max/dac/code/width.h) \
    $(wildcard include/config/max/dac/code/reg//max/dac/code/resetvalue.h) \
    $(wildcard include/config/max/dac/code/reg/width.h) \
    $(wildcard include/config/max/dac/code/reg//width.h) \
    $(wildcard include/config/max/dac/code/reg/all/l.h) \
    $(wildcard include/config/max/dac/code/reg/all/r.h) \
    $(wildcard include/config/max/dac/code/reg//all/l.h) \
    $(wildcard include/config/max/dac/code/reg//all/r.h) \
    $(wildcard include/config/max/dac/code/reg/datamask.h) \
    $(wildcard include/config/max/dac/code/reg/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/base.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/offset.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//reserved/l.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//reserved/r.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//reserved/width.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//reserved/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//pvtmon/sw/resetb.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//pvtmon/sw/resetb/width.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//pvtmon/sw/resetb/resetvalue.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/width.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//width.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/all/l.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/all/r.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//all/l.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg//all/r.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/datamask.h) \
    $(wildcard include/config/pvt/mntr/sw/resetb/reg/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/base.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/offset.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//enable.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//enable/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//enable/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//over/drive.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//over/drive/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//over/drive/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/l.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/r.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//sram/type.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//sram/type/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//sram/type/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//process.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//process/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//process/resetvalue.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/l.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//reserved/r.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//width.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/all/l.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/all/r.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//all/l.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg//all/r.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/datamask.h) \
    $(wildcard include/config/avs/top/analog/sram/indicator/reg/resetvalue.h) \
    $(wildcard include/config/ecc/status.h) \
    $(wildcard include/config/ecc/status/base.h) \
    $(wildcard include/config/ecc/status//reserved/1/l.h) \
    $(wildcard include/config/ecc/status//reserved/1/r.h) \
    $(wildcard include/config/ecc/status//reserved/1/width.h) \
    $(wildcard include/config/ecc/status//reserved/1/resetvalue.h) \
    $(wildcard include/config/ecc/status//cor/1b/err1.h) \
    $(wildcard include/config/ecc/status//cor/1b/err1/width.h) \
    $(wildcard include/config/ecc/status//cor/1b/err1/resetvalue.h) \
    $(wildcard include/config/ecc/status//det/2bit/err1.h) \
    $(wildcard include/config/ecc/status//det/2bit/err1/width.h) \
    $(wildcard include/config/ecc/status//det/2bit/err1/resetvalue.h) \
    $(wildcard include/config/ecc/status//cor/1b/err0.h) \
    $(wildcard include/config/ecc/status//cor/1b/err0/width.h) \
    $(wildcard include/config/ecc/status//cor/1b/err0/resetvalue.h) \
    $(wildcard include/config/ecc/status//det/2bit/err0.h) \
    $(wildcard include/config/ecc/status//det/2bit/err0/width.h) \
    $(wildcard include/config/ecc/status//det/2bit/err0/resetvalue.h) \
    $(wildcard include/config/ecc/status/width.h) \
    $(wildcard include/config/ecc/status//width.h) \
    $(wildcard include/config/ecc/status/all/l.h) \
    $(wildcard include/config/ecc/status/all/r.h) \
    $(wildcard include/config/ecc/status//all/l.h) \
    $(wildcard include/config/ecc/status//all/r.h) \
    $(wildcard include/config/ecc/status/datamask.h) \
    $(wildcard include/config/ecc/status/resetvalue.h) \
    $(wildcard include/config/reg//scb2/base/end/l.h) \
    $(wildcard include/config/reg//scb2/base/end/r.h) \
    $(wildcard include/config/reg//scb2/base/end/width.h) \
    $(wildcard include/config/reg//scb2/base/end/resetvalue.h) \
    $(wildcard include/config/reg//scb2/base/start/l.h) \
    $(wildcard include/config/reg//scb2/base/start/r.h) \
    $(wildcard include/config/reg//scb2/base/start/width.h) \
    $(wildcard include/config/reg//scb2/base/start/resetvalue.h) \
    $(wildcard include/config/reg//scb1/base/end/l.h) \
    $(wildcard include/config/reg//scb1/base/end/r.h) \
    $(wildcard include/config/reg//scb1/base/end/width.h) \
    $(wildcard include/config/reg//scb1/base/end/resetvalue.h) \
    $(wildcard include/config/reg//scb1/base/start/l.h) \
    $(wildcard include/config/reg//scb1/base/start/r.h) \
    $(wildcard include/config/reg//scb1/base/start/width.h) \
    $(wildcard include/config/reg//scb1/base/start/resetvalue.h) \
    $(wildcard include/config/reg//scb0/base/end/l.h) \
    $(wildcard include/config/reg//scb0/base/end/r.h) \
    $(wildcard include/config/reg//scb0/base/end/width.h) \
    $(wildcard include/config/reg//scb0/base/end/resetvalue.h) \
    $(wildcard include/config/reg//scb0/base/start/l.h) \
    $(wildcard include/config/reg//scb0/base/start/r.h) \
    $(wildcard include/config/reg//scb0/base/start/width.h) \
    $(wildcard include/config/reg//scb0/base/start/resetvalue.h) \
    $(wildcard include/config/reg//reserved/l.h) \
    $(wildcard include/config/reg//reserved/r.h) \
    $(wildcard include/config/reg//reserved/width.h) \
    $(wildcard include/config/reg//reserved/resetvalue.h) \
    $(wildcard include/config/reg//disable/force/repeat/drop/grouping.h) \
    $(wildcard include/config/reg//disable/force/repeat/drop/grouping/width.h) \
    $(wildcard include/config/reg//disable/force/repeat/drop/grouping/resetvalue.h) \
    $(wildcard include/config/reg/spare0.h) \
    $(wildcard include/config/reg/spare0/base.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q0/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q0/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q0/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q0/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare0//width.h) \
    $(wildcard include/config/reg/spare0/all/l.h) \
    $(wildcard include/config/reg/spare0/all/r.h) \
    $(wildcard include/config/reg/spare0//all/l.h) \
    $(wildcard include/config/reg/spare0//all/r.h) \
    $(wildcard include/config/reg/spare0/datamask.h) \
    $(wildcard include/config/reg/spare1.h) \
    $(wildcard include/config/reg/spare1/base.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q0/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q0/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q0/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q0/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare1//width.h) \
    $(wildcard include/config/reg/spare1/all/l.h) \
    $(wildcard include/config/reg/spare1/all/r.h) \
    $(wildcard include/config/reg/spare1//all/l.h) \
    $(wildcard include/config/reg/spare1//all/r.h) \
    $(wildcard include/config/reg/spare1/datamask.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q1/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q1/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q1/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q1/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q1/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q1/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q1/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q1/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q2/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q2/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q2/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q2/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q2/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q2/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q2/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q2/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q3/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q3/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q3/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q3/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q3/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q3/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q3/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q3/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q4/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q4/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q4/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q4/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q4/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q4/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q4/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q4/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q5/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q5/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q5/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q5/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q5/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q5/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q5/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q5/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q6/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q6/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q6/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q6/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q6/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q6/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q6/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q6/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q7/config/reg/spare0/l.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q7/config/reg/spare0/r.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q7/config/reg/spare0/width.h) \
    $(wildcard include/config/reg/spare0//egress/shaper/q7/config/reg/spare0/resetvalue.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q7/config/reg/spare1/l.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q7/config/reg/spare1/r.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q7/config/reg/spare1/width.h) \
    $(wildcard include/config/reg/spare1//egress/shaper/q7/config/reg/spare1/resetvalue.h) \
    $(wildcard include/config//cmc2/clk/en.h) \
    $(wildcard include/config//cmc2/clk/en/width.h) \
    $(wildcard include/config//cmc2/clk/en/resetvalue.h) \
    $(wildcard include/config//cmc1/clk/en.h) \
    $(wildcard include/config//cmc1/clk/en/width.h) \
    $(wildcard include/config//cmc1/clk/en/resetvalue.h) \
    $(wildcard include/config//cmc0/clk/en.h) \
    $(wildcard include/config//cmc0/clk/en/width.h) \
    $(wildcard include/config//cmc0/clk/en/resetvalue.h) \
    $(wildcard include/config//disable/sbus/parallel/mode.h) \
    $(wildcard include/config//disable/sbus/parallel/mode/width.h) \
    $(wildcard include/config//disable/sbus/parallel/mode/resetvalue.h) \
    $(wildcard include/config/rdwrmask.h) \
    $(wildcard include/config/0.h) \
    $(wildcard include/config/0/base.h) \
    $(wildcard include/config/0//dataram/tm/l.h) \
    $(wildcard include/config/0//dataram/tm/r.h) \
    $(wildcard include/config/0//dataram/tm/width.h) \
    $(wildcard include/config/0//dataram/tm/resetvalue.h) \
    $(wildcard include/config/0//reserved/l.h) \
    $(wildcard include/config/0//reserved/r.h) \
    $(wildcard include/config/0/width.h) \
    $(wildcard include/config/0//width.h) \
    $(wildcard include/config/0/all/l.h) \
    $(wildcard include/config/0/all/r.h) \
    $(wildcard include/config/0//all/l.h) \
    $(wildcard include/config/0//all/r.h) \
    $(wildcard include/config/0/datamask.h) \
    $(wildcard include/config/0/rdwrmask.h) \
    $(wildcard include/config/0/resetvalue.h) \
    $(wildcard include/config/1//ptrram/tm/l.h) \
    $(wildcard include/config/1//ptrram/tm/r.h) \
    $(wildcard include/config/1//ptrram/tm/width.h) \
    $(wildcard include/config/1//ptrram/tm/resetvalue.h) \
    $(wildcard include/config/1/rdwrmask.h) \
    $(wildcard include/config/2.h) \
    $(wildcard include/config/2/base.h) \
    $(wildcard include/config/2//boot/peripheral/ns/l.h) \
    $(wildcard include/config/2//boot/peripheral/ns/r.h) \
    $(wildcard include/config/2//boot/peripheral/ns/width.h) \
    $(wildcard include/config/2//boot/peripheral/ns/resetvalue.h) \
    $(wildcard include/config/2/width.h) \
    $(wildcard include/config/2//width.h) \
    $(wildcard include/config/2/all/l.h) \
    $(wildcard include/config/2/all/r.h) \
    $(wildcard include/config/2//all/l.h) \
    $(wildcard include/config/2//all/r.h) \
    $(wildcard include/config/2/datamask.h) \
    $(wildcard include/config/2/rdwrmask.h) \
    $(wildcard include/config/2/resetvalue.h) \
    $(wildcard include/config/3.h) \
    $(wildcard include/config/3/base.h) \
    $(wildcard include/config/3//boot/irq/ns/l.h) \
    $(wildcard include/config/3//boot/irq/ns/r.h) \
    $(wildcard include/config/3//boot/irq/ns/width.h) \
    $(wildcard include/config/3//boot/irq/ns/resetvalue.h) \
    $(wildcard include/config/3//reserved/l.h) \
    $(wildcard include/config/3//reserved/r.h) \
    $(wildcard include/config/3/width.h) \
    $(wildcard include/config/3//width.h) \
    $(wildcard include/config/3/all/l.h) \
    $(wildcard include/config/3/all/r.h) \
    $(wildcard include/config/3//all/l.h) \
    $(wildcard include/config/3//all/r.h) \
    $(wildcard include/config/3/datamask.h) \
    $(wildcard include/config/3/rdwrmask.h) \
    $(wildcard include/config/3/resetvalue.h) \
    $(wildcard include/config/0//aruser/l.h) \
    $(wildcard include/config/0//aruser/r.h) \
    $(wildcard include/config/0//aruser/width.h) \
    $(wildcard include/config/0//aruser/resetvalue.h) \
    $(wildcard include/config/0//awuser/l.h) \
    $(wildcard include/config/0//awuser/r.h) \
    $(wildcard include/config/0//awuser/width.h) \
    $(wildcard include/config/0//awuser/resetvalue.h) \
    $(wildcard include/config/0//ct.h) \
    $(wildcard include/config/0//ct/width.h) \
    $(wildcard include/config/0//ct/resetvalue.h) \
    $(wildcard include/config/0//bypass/ct.h) \
    $(wildcard include/config/0//bypass/ct/width.h) \
    $(wildcard include/config/0//bypass/ct/resetvalue.h) \
    $(wildcard include/config/1//aruser/l.h) \
    $(wildcard include/config/1//aruser/r.h) \
    $(wildcard include/config/1//aruser/width.h) \
    $(wildcard include/config/1//aruser/resetvalue.h) \
    $(wildcard include/config/1//awuser/l.h) \
    $(wildcard include/config/1//awuser/r.h) \
    $(wildcard include/config/1//awuser/width.h) \
    $(wildcard include/config/1//awuser/resetvalue.h) \
    $(wildcard include/config/1//ct.h) \
    $(wildcard include/config/1//ct/width.h) \
    $(wildcard include/config/1//ct/resetvalue.h) \
    $(wildcard include/config/1//bypass/ct.h) \
    $(wildcard include/config/1//bypass/ct/width.h) \
    $(wildcard include/config/1//bypass/ct/resetvalue.h) \
    $(wildcard include/config/1//dataram/tm/l.h) \
    $(wildcard include/config/1//dataram/tm/r.h) \
    $(wildcard include/config/1//dataram/tm/width.h) \
    $(wildcard include/config/1//dataram/tm/resetvalue.h) \
    $(wildcard include/config/0//rxmem/tm/l.h) \
    $(wildcard include/config/0//rxmem/tm/r.h) \
    $(wildcard include/config/0//rxmem/tm/width.h) \
    $(wildcard include/config/0//rxmem/tm/resetvalue.h) \
    $(wildcard include/config/0//reserved/0/l.h) \
    $(wildcard include/config/0//reserved/0/r.h) \
    $(wildcard include/config/0//reserved/1/l.h) \
    $(wildcard include/config/0//reserved/1/r.h) \
    $(wildcard include/config/0//reserved/2/l.h) \
    $(wildcard include/config/0//reserved/2/r.h) \
    $(wildcard include/config/1//txmem0/tm/l.h) \
    $(wildcard include/config/1//txmem0/tm/r.h) \
    $(wildcard include/config/1//txmem0/tm/width.h) \
    $(wildcard include/config/1//txmem0/tm/resetvalue.h) \
    $(wildcard include/config/2//txmem1/tm/l.h) \
    $(wildcard include/config/2//txmem1/tm/r.h) \
    $(wildcard include/config/2//txmem1/tm/width.h) \
    $(wildcard include/config/2//txmem1/tm/resetvalue.h) \
    $(wildcard include/config/2//reserved/l.h) \
    $(wildcard include/config/2//reserved/r.h) \
    $(wildcard include/config//dataram/tx/buf/tm/l.h) \
    $(wildcard include/config//dataram/tx/buf/tm/r.h) \
    $(wildcard include/config//dataram/tx/buf/tm/width.h) \
    $(wildcard include/config//dataram/tx/buf/tm/resetvalue.h) \
    $(wildcard include/config//dataram/prefetch/tx/tm/l.h) \
    $(wildcard include/config//dataram/prefetch/tx/tm/r.h) \
    $(wildcard include/config//dataram/prefetch/tx/tm/width.h) \
    $(wildcard include/config//dataram/prefetch/tx/tm/resetvalue.h) \
    $(wildcard include/config//dataram/rx/buf/info/tm/l.h) \
    $(wildcard include/config//dataram/rx/buf/info/tm/r.h) \
    $(wildcard include/config//dataram/rx/buf/info/tm/width.h) \
    $(wildcard include/config//dataram/rx/buf/info/tm/resetvalue.h) \
    $(wildcard include/config//dataram/rx/buf/tm/l.h) \
    $(wildcard include/config//dataram/rx/buf/tm/r.h) \
    $(wildcard include/config//dataram/rx/buf/tm/width.h) \
    $(wildcard include/config//dataram/rx/buf/tm/resetvalue.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm1/l.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm1/r.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm1/width.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm1/resetvalue.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm0/l.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm0/r.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm0/width.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm0/resetvalue.h) \
    $(wildcard include/config//dataram/tx/buf/lvm.h) \
    $(wildcard include/config//dataram/tx/buf/lvm/width.h) \
    $(wildcard include/config//dataram/tx/buf/lvm/resetvalue.h) \
    $(wildcard include/config//dataram/tx/buf/info/tm/l.h) \
    $(wildcard include/config//dataram/tx/buf/info/tm/r.h) \
    $(wildcard include/config//dataram/tx/buf/info/tm/width.h) \
    $(wildcard include/config//dataram/tx/buf/info/tm/resetvalue.h) \
    $(wildcard include/config//dataram/rx/buf/lvm.h) \
    $(wildcard include/config//dataram/rx/buf/lvm/width.h) \
    $(wildcard include/config//dataram/rx/buf/lvm/resetvalue.h) \
    $(wildcard include/config//dataram/prefetch/rx/tm/l.h) \
    $(wildcard include/config//dataram/prefetch/rx/tm/r.h) \
    $(wildcard include/config//dataram/prefetch/rx/tm/width.h) \
    $(wildcard include/config//dataram/prefetch/rx/tm/resetvalue.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm2/l.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm2/r.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm2/width.h) \
    $(wildcard include/config//dataram/prefetch/unimac/tm2/resetvalue.h) \
    $(wildcard include/config/0//tm/l.h) \
    $(wildcard include/config/0//tm/r.h) \
    $(wildcard include/config/0//tm/width.h) \
    $(wildcard include/config/0//tm/resetvalue.h) \
    $(wildcard include/config/1//pfetchram/tm/l.h) \
    $(wildcard include/config/1//pfetchram/tm/r.h) \
    $(wildcard include/config/1//pfetchram/tm/width.h) \
    $(wildcard include/config/1//pfetchram/tm/resetvalue.h) \
    $(wildcard include/config/2//dataram/tm/l.h) \
    $(wildcard include/config/2//dataram/tm/r.h) \
    $(wildcard include/config/2//dataram/tm/width.h) \
    $(wildcard include/config/2//dataram/tm/resetvalue.h) \
    $(wildcard include/config/cs/0.h) \
    $(wildcard include/config/cs/0/base.h) \
    $(wildcard include/config/cs/0//address/mask0/0/l.h) \
    $(wildcard include/config/cs/0//address/mask0/0/r.h) \
    $(wildcard include/config/cs/0//address/mask0/0/width.h) \
    $(wildcard include/config/cs/0//address/mask0/0/resetvalue.h) \
    $(wildcard include/config/cs/0//address/match0/0/l.h) \
    $(wildcard include/config/cs/0//address/match0/0/r.h) \
    $(wildcard include/config/cs/0//address/match0/0/width.h) \
    $(wildcard include/config/cs/0//address/match0/0/resetvalue.h) \
    $(wildcard include/config/cs/0//reserved/l.h) \
    $(wildcard include/config/cs/0//reserved/r.h) \
    $(wildcard include/config/cs/0/width.h) \
    $(wildcard include/config/cs/0//width.h) \
    $(wildcard include/config/cs/0/all/l.h) \
    $(wildcard include/config/cs/0/all/r.h) \
    $(wildcard include/config/cs/0//all/l.h) \
    $(wildcard include/config/cs/0//all/r.h) \
    $(wildcard include/config/cs/0/datamask.h) \
    $(wildcard include/config/cs/0/rdwrmask.h) \
    $(wildcard include/config/cs/0/resetvalue.h) \
    $(wildcard include/config/cs/1.h) \
    $(wildcard include/config/cs/1/base.h) \
    $(wildcard include/config/cs/1//address/mask0/1/l.h) \
    $(wildcard include/config/cs/1//address/mask0/1/r.h) \
    $(wildcard include/config/cs/1//address/mask0/1/width.h) \
    $(wildcard include/config/cs/1//address/mask0/1/resetvalue.h) \
    $(wildcard include/config/cs/1//address/match0/1/l.h) \
    $(wildcard include/config/cs/1//address/match0/1/r.h) \
    $(wildcard include/config/cs/1//address/match0/1/width.h) \
    $(wildcard include/config/cs/1//address/match0/1/resetvalue.h) \
    $(wildcard include/config/cs/1//reserved/l.h) \
    $(wildcard include/config/cs/1//reserved/r.h) \
    $(wildcard include/config/cs/1/width.h) \
    $(wildcard include/config/cs/1//width.h) \
    $(wildcard include/config/cs/1/all/l.h) \
    $(wildcard include/config/cs/1/all/r.h) \
    $(wildcard include/config/cs/1//all/l.h) \
    $(wildcard include/config/cs/1//all/r.h) \
    $(wildcard include/config/cs/1/datamask.h) \
    $(wildcard include/config/cs/1/rdwrmask.h) \
    $(wildcard include/config/cs/1/resetvalue.h) \
    $(wildcard include/config/cs/2.h) \
    $(wildcard include/config/cs/2/base.h) \
    $(wildcard include/config/cs/2//address/mask0/2/l.h) \
    $(wildcard include/config/cs/2//address/mask0/2/r.h) \
    $(wildcard include/config/cs/2//address/mask0/2/width.h) \
    $(wildcard include/config/cs/2//address/mask0/2/resetvalue.h) \
    $(wildcard include/config/cs/2//address/match0/2/l.h) \
    $(wildcard include/config/cs/2//address/match0/2/r.h) \
    $(wildcard include/config/cs/2//address/match0/2/width.h) \
    $(wildcard include/config/cs/2//address/match0/2/resetvalue.h) \
    $(wildcard include/config/cs/2//reserved/l.h) \
    $(wildcard include/config/cs/2//reserved/r.h) \
    $(wildcard include/config/cs/2/width.h) \
    $(wildcard include/config/cs/2//width.h) \
    $(wildcard include/config/cs/2/all/l.h) \
    $(wildcard include/config/cs/2/all/r.h) \
    $(wildcard include/config/cs/2//all/l.h) \
    $(wildcard include/config/cs/2//all/r.h) \
    $(wildcard include/config/cs/2/datamask.h) \
    $(wildcard include/config/cs/2/rdwrmask.h) \
    $(wildcard include/config/cs/2/resetvalue.h) \
    $(wildcard include/config/0//clk/enable.h) \
    $(wildcard include/config/0//clk/enable/width.h) \
    $(wildcard include/config/0//clk/enable/resetvalue.h) \
    $(wildcard include/config//reserved/for/eco.h) \
    $(wildcard include/config//reserved/for/eco/width.h) \
    $(wildcard include/config//reserved/for/eco/resetvalue.h) \
    $(wildcard include/config//ck/ldo/ref/ctrl/l.h) \
    $(wildcard include/config//ck/ldo/ref/ctrl/r.h) \
    $(wildcard include/config//ck/ldo/ref/ctrl/width.h) \
    $(wildcard include/config//ck/ldo/ref/ctrl/resetvalue.h) \
    $(wildcard include/config//ck/ldo/bias/l.h) \
    $(wildcard include/config//ck/ldo/bias/r.h) \
    $(wildcard include/config//ck/ldo/bias/width.h) \
    $(wildcard include/config//ck/ldo/bias/resetvalue.h) \
    $(wildcard include/config//pll/ldo/ref/sel.h) \
    $(wildcard include/config//pll/ldo/ref/sel/width.h) \
    $(wildcard include/config//pll/ldo/ref/sel/resetvalue.h) \
    $(wildcard include/config//pll/ldo/ref/ctrl/l.h) \
    $(wildcard include/config//pll/ldo/ref/ctrl/r.h) \
    $(wildcard include/config//pll/ldo/ref/ctrl/width.h) \
    $(wildcard include/config//pll/ldo/ref/ctrl/resetvalue.h) \
    $(wildcard include/config//pll/ldo/bias/l.h) \
    $(wildcard include/config//pll/ldo/bias/r.h) \
    $(wildcard include/config//pll/ldo/bias/width.h) \
    $(wildcard include/config//pll/ldo/bias/resetvalue.h) \
    $(wildcard include/config//hold.h) \
    $(wildcard include/config//hold/width.h) \
    $(wildcard include/config//hold/resetvalue.h) \
    $(wildcard include/config//enable.h) \
    $(wildcard include/config//enable/width.h) \
    $(wildcard include/config//enable/resetvalue.h) \
    $(wildcard include/config//fb/offset/l.h) \
    $(wildcard include/config//fb/offset/r.h) \
    $(wildcard include/config//fb/offset/width.h) \
    $(wildcard include/config//fb/offset/resetvalue.h) \
    $(wildcard include/config//reset/post/div.h) \
    $(wildcard include/config//reset/post/div/width.h) \
    $(wildcard include/config//reset/post/div/resetvalue.h) \
    $(wildcard include/config//reserved/l.h) \
    $(wildcard include/config//reserved/r.h) \
    $(wildcard include/config//reserved/width.h) \
    $(wildcard include/config//reserved/resetvalue.h) \
    $(wildcard include/config//reset.h) \
    $(wildcard include/config//reset/width.h) \
    $(wildcard include/config//reset/resetvalue.h) \
    $(wildcard include/config//pwrdn.h) \
    $(wildcard include/config//pwrdn/width.h) \
    $(wildcard include/config//pwrdn/resetvalue.h) \
    $(wildcard include/config//init/mode.h) \
    $(wildcard include/config//init/mode/width.h) \
    $(wildcard include/config//init/mode/resetvalue.h) \
    $(wildcard include/config//ecc/enabled.h) \
    $(wildcard include/config//ecc/enabled/width.h) \
    $(wildcard include/config//ecc/enabled/resetvalue.h) \
    $(wildcard include/config//split/dq/bus.h) \
    $(wildcard include/config//split/dq/bus/width.h) \
    $(wildcard include/config//split/dq/bus/resetvalue.h) \
    $(wildcard include/config//bus16.h) \
    $(wildcard include/config//bus16/width.h) \
    $(wildcard include/config//bus16/resetvalue.h) \
    $(wildcard include/config//bus8.h) \
    $(wildcard include/config//bus8/width.h) \
    $(wildcard include/config//bus8/resetvalue.h) \
    $(wildcard include/config//edc/mode.h) \
    $(wildcard include/config//edc/mode/width.h) \
    $(wildcard include/config//edc/mode/resetvalue.h) \
    $(wildcard include/config//rdqs/mode.h) \
    $(wildcard include/config//rdqs/mode/width.h) \
    $(wildcard include/config//rdqs/mode/resetvalue.h) \
    $(wildcard include/config//group/bits/l.h) \
    $(wildcard include/config//group/bits/r.h) \
    $(wildcard include/config//group/bits/width.h) \
    $(wildcard include/config//group/bits/resetvalue.h) \
    $(wildcard include/config//bank/bits/l.h) \
    $(wildcard include/config//bank/bits/r.h) \
    $(wildcard include/config//bank/bits/width.h) \
    $(wildcard include/config//bank/bits/resetvalue.h) \
    $(wildcard include/config//col/bits/l.h) \
    $(wildcard include/config//col/bits/r.h) \
    $(wildcard include/config//col/bits/width.h) \
    $(wildcard include/config//col/bits/resetvalue.h) \
    $(wildcard include/config//row/bits/l.h) \
    $(wildcard include/config//row/bits/r.h) \
    $(wildcard include/config//row/bits/width.h) \
    $(wildcard include/config//row/bits/resetvalue.h) \
    $(wildcard include/config//dram/type/l.h) \
    $(wildcard include/config//dram/type/r.h) \
    $(wildcard include/config//dram/type/width.h) \
    $(wildcard include/config//dram/type/resetvalue.h) \
    $(wildcard include/config//rsvd/1/l.h) \
    $(wildcard include/config//rsvd/1/r.h) \
    $(wildcard include/config//rsvd/1/width.h) \
    $(wildcard include/config//rsvd/1/resetvalue.h) \
    $(wildcard include/config//awuser/config/l.h) \
    $(wildcard include/config//awuser/config/r.h) \
    $(wildcard include/config//awuser/config/width.h) \
    $(wildcard include/config//awuser/config/resetvalue.h) \
    $(wildcard include/config//rsvd/0/l.h) \
    $(wildcard include/config//rsvd/0/r.h) \
    $(wildcard include/config//rsvd/0/width.h) \
    $(wildcard include/config//rsvd/0/resetvalue.h) \
    $(wildcard include/config//aruser/config/l.h) \
    $(wildcard include/config//aruser/config/r.h) \
    $(wildcard include/config//aruser/config/width.h) \
    $(wildcard include/config//aruser/config/resetvalue.h) \
    $(wildcard include/config/ind/addr.h) \
    $(wildcard include/config/ind/addr/base.h) \
    $(wildcard include/config/ind/addr//function/num/l.h) \
    $(wildcard include/config/ind/addr//function/num/r.h) \
    $(wildcard include/config/ind/addr//function/num/width.h) \
    $(wildcard include/config/ind/addr//function/num/resetvalue.h) \
    $(wildcard include/config/ind/addr//protocol/layer/l.h) \
    $(wildcard include/config/ind/addr//protocol/layer/r.h) \
    $(wildcard include/config/ind/addr//protocol/layer/width.h) \
    $(wildcard include/config/ind/addr//protocol/layer/resetvalue.h) \
    $(wildcard include/config/ind/addr//address/l.h) \
    $(wildcard include/config/ind/addr//address/r.h) \
    $(wildcard include/config/ind/addr//address/width.h) \
    $(wildcard include/config/ind/addr//address/resetvalue.h) \
    $(wildcard include/config/ind/addr//reserved/l.h) \
    $(wildcard include/config/ind/addr//reserved/r.h) \
    $(wildcard include/config/ind/addr/width.h) \
    $(wildcard include/config/ind/addr//width.h) \
    $(wildcard include/config/ind/addr/all/l.h) \
    $(wildcard include/config/ind/addr/all/r.h) \
    $(wildcard include/config/ind/addr//all/l.h) \
    $(wildcard include/config/ind/addr//all/r.h) \
    $(wildcard include/config/ind/addr/datamask.h) \
    $(wildcard include/config/ind/addr/rdwrmask.h) \
    $(wildcard include/config/ind/addr/resetvalue.h) \
    $(wildcard include/config/ind/data.h) \
    $(wildcard include/config/ind/data/base.h) \
    $(wildcard include/config/ind/data//data/l.h) \
    $(wildcard include/config/ind/data//data/r.h) \
    $(wildcard include/config/ind/data//data/width.h) \
    $(wildcard include/config/ind/data//data/resetvalue.h) \
    $(wildcard include/config/ind/data/width.h) \
    $(wildcard include/config/ind/data//width.h) \
    $(wildcard include/config/ind/data/all/l.h) \
    $(wildcard include/config/ind/data/all/r.h) \
    $(wildcard include/config/ind/data//all/l.h) \
    $(wildcard include/config/ind/data//all/r.h) \
    $(wildcard include/config/ind/data/datamask.h) \
    $(wildcard include/config/ind/data/rdwrmask.h) \
    $(wildcard include/config/ind/data/resetvalue.h) \
    $(wildcard include/config//paxb/misc/config/l.h) \
    $(wildcard include/config//paxb/misc/config/r.h) \
    $(wildcard include/config//paxb/misc/config/width.h) \
    $(wildcard include/config//paxb/misc/config/resetvalue.h) \
    $(wildcard include/config/rx/l.h) \
    $(wildcard include/config/rx/r.h) \
    $(wildcard include/config/rx/width.h) \
    $(wildcard include/config/rx/resetvalue.h) \
    $(wildcard include/config//runt/filter/dis.h) \
    $(wildcard include/config//runt/filter/dis/width.h) \
    $(wildcard include/config//runt/filter/dis/resetvalue.h) \
    $(wildcard include/config//oob/efc/en.h) \
    $(wildcard include/config//oob/efc/en/width.h) \
    $(wildcard include/config//oob/efc/en/resetvalue.h) \
    $(wildcard include/config//ignore/tx/pause.h) \
    $(wildcard include/config//ignore/tx/pause/width.h) \
    $(wildcard include/config//ignore/tx/pause/resetvalue.h) \
    $(wildcard include/config//fd/tx/urun/fix/en.h) \
    $(wildcard include/config//fd/tx/urun/fix/en/width.h) \
    $(wildcard include/config//fd/tx/urun/fix/en/resetvalue.h) \
    $(wildcard include/config//rx/err/disc.h) \
    $(wildcard include/config//rx/err/disc/width.h) \
    $(wildcard include/config//rx/err/disc/resetvalue.h) \
    $(wildcard include/config//line/loopback.h) \
    $(wildcard include/config//line/loopback/width.h) \
    $(wildcard include/config//line/loopback/resetvalue.h) \
    $(wildcard include/config//no/lgth/check.h) \
    $(wildcard include/config//no/lgth/check/width.h) \
    $(wildcard include/config//no/lgth/check/resetvalue.h) \
    $(wildcard include/config//cntl/frm/ena.h) \
    $(wildcard include/config//cntl/frm/ena/width.h) \
    $(wildcard include/config//cntl/frm/ena/resetvalue.h) \
    $(wildcard include/config//ena/ext/config.h) \
    $(wildcard include/config//ena/ext/config/width.h) \
    $(wildcard include/config//ena/ext/config/resetvalue.h) \
    $(wildcard include/config//en/internal/tx/crs.h) \
    $(wildcard include/config//en/internal/tx/crs/width.h) \
    $(wildcard include/config//en/internal/tx/crs/resetvalue.h) \
    $(wildcard include/config//sw/override/rx.h) \
    $(wildcard include/config//sw/override/rx/width.h) \
    $(wildcard include/config//sw/override/rx/resetvalue.h) \
    $(wildcard include/config//sw/override/tx.h) \
    $(wildcard include/config//sw/override/tx/width.h) \
    $(wildcard include/config//sw/override/tx/resetvalue.h) \
    $(wildcard include/config//mac/loop/con.h) \
    $(wildcard include/config//mac/loop/con/width.h) \
    $(wildcard include/config//mac/loop/con/resetvalue.h) \
    $(wildcard include/config//loop/ena.h) \
    $(wildcard include/config//loop/ena/width.h) \
    $(wildcard include/config//loop/ena/resetvalue.h) \
    $(wildcard include/config//fcs/corrupt/urun/en.h) \
    $(wildcard include/config//fcs/corrupt/urun/en/width.h) \
    $(wildcard include/config//fcs/corrupt/urun/en/resetvalue.h) \
    $(wildcard include/config//sw/reset.h) \
    $(wildcard include/config//sw/reset/width.h) \
    $(wildcard include/config//sw/reset/resetvalue.h) \
    $(wildcard include/config//overflow/en.h) \
    $(wildcard include/config//overflow/en/width.h) \
    $(wildcard include/config//overflow/en/resetvalue.h) \
    $(wildcard include/config//rx/low/latency/en.h) \
    $(wildcard include/config//rx/low/latency/en/width.h) \
    $(wildcard include/config//rx/low/latency/en/resetvalue.h) \
    $(wildcard include/config//hd/ena.h) \
    $(wildcard include/config//hd/ena/width.h) \
    $(wildcard include/config//hd/ena/resetvalue.h) \
    $(wildcard include/config//tx/addr/ins.h) \
    $(wildcard include/config//tx/addr/ins/width.h) \
    $(wildcard include/config//tx/addr/ins/resetvalue.h) \
    $(wildcard include/config//pause/ignore.h) \
    $(wildcard include/config//pause/ignore/width.h) \
    $(wildcard include/config//pause/ignore/resetvalue.h) \
    $(wildcard include/config//pause/fwd.h) \
    $(wildcard include/config//pause/fwd/width.h) \
    $(wildcard include/config//pause/fwd/resetvalue.h) \
    $(wildcard include/config//crc/fwd.h) \
    $(wildcard include/config//crc/fwd/width.h) \
    $(wildcard include/config//crc/fwd/resetvalue.h) \
    $(wildcard include/config//pad/en.h) \
    $(wildcard include/config//pad/en/width.h) \
    $(wildcard include/config//pad/en/resetvalue.h) \
    $(wildcard include/config//promis/en.h) \
    $(wildcard include/config//promis/en/width.h) \
    $(wildcard include/config//promis/en/resetvalue.h) \
    $(wildcard include/config//eth/speed/l.h) \
    $(wildcard include/config//eth/speed/r.h) \
    $(wildcard include/config//eth/speed/width.h) \
    $(wildcard include/config//eth/speed/sp/10.h) \
    $(wildcard include/config//eth/speed/sp/100.h) \
    $(wildcard include/config//eth/speed/sp/1000.h) \
    $(wildcard include/config//eth/speed/sp/2500.h) \
    $(wildcard include/config//eth/speed/resetvalue.h) \
    $(wildcard include/config//rx/ena.h) \
    $(wildcard include/config//rx/ena/width.h) \
    $(wildcard include/config//rx/ena/resetvalue.h) \
    $(wildcard include/config//tx/ena.h) \
    $(wildcard include/config//tx/ena/width.h) \
    $(wildcard include/config//tx/ena/resetvalue.h) \
    $(wildcard include/config/outer/tpid/enable.h) \
    $(wildcard include/config/outer/tpid/enable/width.h) \
    $(wildcard include/config/outer/tpid/enable/resetvalue.h) \
    $(wildcard include/config/inner/tpid/enable.h) \
    $(wildcard include/config/inner/tpid/enable/width.h) \
    $(wildcard include/config/inner/tpid/enable/resetvalue.h) \
    $(wildcard include/config/cs0.h) \
    $(wildcard include/config/cs0/base.h) \
    $(wildcard include/config/cs0//config/lock.h) \
    $(wildcard include/config/lock.h) \
    $(wildcard include/config/cs0//config/lock/width.h) \
    $(wildcard include/config/lock/width.h) \
    $(wildcard include/config/cs0//config/lock/resetvalue.h) \
    $(wildcard include/config/lock/resetvalue.h) \
    $(wildcard include/config/cs0//block/size/l.h) \
    $(wildcard include/config/cs0//block/size/r.h) \
    $(wildcard include/config/cs0//block/size/width.h) \
    $(wildcard include/config/cs0//block/size/resetvalue.h) \
    $(wildcard include/config/cs0//device/size/l.h) \
    $(wildcard include/config/cs0//device/size/r.h) \
    $(wildcard include/config/cs0//device/size/width.h) \
    $(wildcard include/config/cs0//device/size/resetvalue.h) \
    $(wildcard include/config/cs0//device/width.h) \
    $(wildcard include/config/cs0//device/width/width.h) \
    $(wildcard include/config/cs0//device/width/resetvalue.h) \
    $(wildcard include/config/cs0//page/size/l.h) \
    $(wildcard include/config/cs0//page/size/r.h) \
    $(wildcard include/config/cs0//page/size/width.h) \
    $(wildcard include/config/cs0//page/size/resetvalue.h) \
    $(wildcard include/config/cs0//ful/adr/bytes/l.h) \
    $(wildcard include/config/cs0//ful/adr/bytes/r.h) \
    $(wildcard include/config/cs0//ful/adr/bytes/width.h) \
    $(wildcard include/config/cs0//ful/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs0//col/adr/bytes/l.h) \
    $(wildcard include/config/cs0//col/adr/bytes/r.h) \
    $(wildcard include/config/cs0//col/adr/bytes/width.h) \
    $(wildcard include/config/cs0//col/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs0//blk/adr/bytes/l.h) \
    $(wildcard include/config/cs0//blk/adr/bytes/r.h) \
    $(wildcard include/config/cs0//blk/adr/bytes/width.h) \
    $(wildcard include/config/cs0//blk/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs0//reserved/l.h) \
    $(wildcard include/config/cs0//reserved/r.h) \
    $(wildcard include/config/cs0//reserved/width.h) \
    $(wildcard include/config/cs0//reserved/resetvalue.h) \
    $(wildcard include/config/cs0//reserved/0.h) \
    $(wildcard include/config/cs0//reserved/1.h) \
    $(wildcard include/config/cs0//reserved/2.h) \
    $(wildcard include/config/cs0//reserved/3.h) \
    $(wildcard include/config/cs0/width.h) \
    $(wildcard include/config/cs0//width.h) \
    $(wildcard include/config/cs0/all/l.h) \
    $(wildcard include/config/cs0/all/r.h) \
    $(wildcard include/config/cs0//all/l.h) \
    $(wildcard include/config/cs0//all/r.h) \
    $(wildcard include/config/cs0/datamask.h) \
    $(wildcard include/config/cs0/rdwrmask.h) \
    $(wildcard include/config/cs0/resetvalue.h) \
    $(wildcard include/config/cs1.h) \
    $(wildcard include/config/cs1/base.h) \
    $(wildcard include/config/cs1//config/lock.h) \
    $(wildcard include/config/cs1//config/lock/width.h) \
    $(wildcard include/config/cs1//config/lock/resetvalue.h) \
    $(wildcard include/config/cs1//block/size/l.h) \
    $(wildcard include/config/cs1//block/size/r.h) \
    $(wildcard include/config/cs1//block/size/width.h) \
    $(wildcard include/config/cs1//block/size/resetvalue.h) \
    $(wildcard include/config/cs1//device/size/l.h) \
    $(wildcard include/config/cs1//device/size/r.h) \
    $(wildcard include/config/cs1//device/size/width.h) \
    $(wildcard include/config/cs1//device/size/resetvalue.h) \
    $(wildcard include/config/cs1//device/width.h) \
    $(wildcard include/config/cs1//device/width/width.h) \
    $(wildcard include/config/cs1//device/width/resetvalue.h) \
    $(wildcard include/config/cs1//page/size/l.h) \
    $(wildcard include/config/cs1//page/size/r.h) \
    $(wildcard include/config/cs1//page/size/width.h) \
    $(wildcard include/config/cs1//page/size/resetvalue.h) \
    $(wildcard include/config/cs1//ful/adr/bytes/l.h) \
    $(wildcard include/config/cs1//ful/adr/bytes/r.h) \
    $(wildcard include/config/cs1//ful/adr/bytes/width.h) \
    $(wildcard include/config/cs1//ful/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs1//col/adr/bytes/l.h) \
    $(wildcard include/config/cs1//col/adr/bytes/r.h) \
    $(wildcard include/config/cs1//col/adr/bytes/width.h) \
    $(wildcard include/config/cs1//col/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs1//blk/adr/bytes/l.h) \
    $(wildcard include/config/cs1//blk/adr/bytes/r.h) \
    $(wildcard include/config/cs1//blk/adr/bytes/width.h) \
    $(wildcard include/config/cs1//blk/adr/bytes/resetvalue.h) \
    $(wildcard include/config/cs1//reserved/l.h) \
    $(wildcard include/config/cs1//reserved/r.h) \
    $(wildcard include/config/cs1//reserved/width.h) \
    $(wildcard include/config/cs1//reserved/resetvalue.h) \
    $(wildcard include/config/cs1//reserved/0.h) \
    $(wildcard include/config/cs1//reserved/1.h) \
    $(wildcard include/config/cs1//reserved/2.h) \
    $(wildcard include/config/cs1//reserved/3.h) \
    $(wildcard include/config/cs1/width.h) \
    $(wildcard include/config/cs1//width.h) \
    $(wildcard include/config/cs1/all/l.h) \
    $(wildcard include/config/cs1/all/r.h) \
    $(wildcard include/config/cs1//all/l.h) \
    $(wildcard include/config/cs1//all/r.h) \
    $(wildcard include/config/cs1/datamask.h) \
    $(wildcard include/config/cs1/rdwrmask.h) \
    $(wildcard include/config/cs1/resetvalue.h) \
    $(wildcard include/config//lpm/en.h) \
    $(wildcard include/config//lpm/en/width.h) \
    $(wildcard include/config//lpm/en/resetvalue.h) \
    $(wildcard include/config//lpm/auto.h) \
    $(wildcard include/config//lpm/auto/width.h) \
    $(wildcard include/config//lpm/auto/resetvalue.h) \
    $(wildcard include/config//ddr.h) \
    $(wildcard include/config//ddr/width.h) \
    $(wildcard include/config//ddr/resetvalue.h) \
    $(wildcard include/config//set/desc.h) \
    $(wildcard include/config//set/desc/width.h) \
    $(wildcard include/config//set/desc/resetvalue.h) \
    $(wildcard include/config//csr/prg.h) \
    $(wildcard include/config//csr/prg/width.h) \
    $(wildcard include/config//csr/prg/resetvalue.h) \
    $(wildcard include/config//halt/status.h) \
    $(wildcard include/config//halt/status/width.h) \
    $(wildcard include/config//halt/status/resetvalue.h) \
    $(wildcard include/config//hs/timeout/calib/l.h) \
    $(wildcard include/config//hs/timeout/calib/r.h) \
    $(wildcard include/config//hs/timeout/calib/width.h) \
    $(wildcard include/config//hs/timeout/calib/resetvalue.h) \
    $(wildcard include/config//fs/timeout/calib/l.h) \
    $(wildcard include/config//fs/timeout/calib/r.h) \
    $(wildcard include/config//fs/timeout/calib/width.h) \
    $(wildcard include/config//fs/timeout/calib/resetvalue.h) \
    $(wildcard include/config//phy/error/detect.h) \
    $(wildcard include/config//phy/error/detect/width.h) \
    $(wildcard include/config//phy/error/detect/resetvalue.h) \
    $(wildcard include/config//status/1.h) \
    $(wildcard include/config//status/1/width.h) \
    $(wildcard include/config//status/1/resetvalue.h) \
    $(wildcard include/config//status.h) \
    $(wildcard include/config//status/width.h) \
    $(wildcard include/config//status/resetvalue.h) \
    $(wildcard include/config//dir.h) \
    $(wildcard include/config//dir/width.h) \
    $(wildcard include/config//dir/resetvalue.h) \
    $(wildcard include/config//pi.h) \
    $(wildcard include/config//pi/width.h) \
    $(wildcard include/config//pi/resetvalue.h) \
    $(wildcard include/config//ss.h) \
    $(wildcard include/config//ss/width.h) \
    $(wildcard include/config//ss/resetvalue.h) \
    $(wildcard include/config//sp.h) \
    $(wildcard include/config//sp/width.h) \
    $(wildcard include/config//sp/resetvalue.h) \
    $(wildcard include/config//rwkp.h) \
    $(wildcard include/config//rwkp/width.h) \
    $(wildcard include/config//rwkp/resetvalue.h) \
    $(wildcard include/config//spd/l.h) \
    $(wildcard include/config//spd/r.h) \
    $(wildcard include/config//spd/width.h) \
    $(wildcard include/config//spd/resetvalue.h) \
    $(wildcard include/config/en.h) \
    $(wildcard include/config/en/width.h) \
    $(wildcard include/config/en/resetvalue.h) \
    $(wildcard include/config//vio/wrovf/intr/en.h) \
    $(wildcard include/config//vio/wrovf/intr/en/width.h) \
    $(wildcard include/config//vio/wrovf/intr/en/resetvalue.h) \
    $(wildcard include/config//vio/rdovf/intr/en.h) \
    $(wildcard include/config//vio/rdovf/intr/en/width.h) \
    $(wildcard include/config//vio/rdovf/intr/en/resetvalue.h) \
    $(wildcard include/config//vio/err/intr/en.h) \
    $(wildcard include/config//vio/err/intr/en/width.h) \
    $(wildcard include/config//vio/err/intr/en/resetvalue.h) \
    $(wildcard include/config//busy/id/l.h) \
    $(wildcard include/config//busy/id/r.h) \
    $(wildcard include/config//busy/id/width.h) \
    $(wildcard include/config//busy/id/resetvalue.h) \
    $(wildcard include/config//outs/thresh/l.h) \
    $(wildcard include/config//outs/thresh/r.h) \
    $(wildcard include/config//outs/thresh/width.h) \
    $(wildcard include/config//outs/thresh/resetvalue.h) \
    $(wildcard include/config//outs/filtered.h) \
    $(wildcard include/config//outs/filtered/width.h) \
    $(wildcard include/config//outs/filtered/resetvalue.h) \
    $(wildcard include/config//outs/en.h) \
    $(wildcard include/config//outs/en/width.h) \
    $(wildcard include/config//outs/en/resetvalue.h) \
    $(wildcard include/config//all/cycles/en.h) \
    $(wildcard include/config//all/cycles/en/width.h) \
    $(wildcard include/config//all/cycles/en/resetvalue.h) \
    $(wildcard include/config//rdlat/mode.h) \
    $(wildcard include/config//rdlat/mode/width.h) \
    $(wildcard include/config//rdlat/mode/resetvalue.h) \
    $(wildcard include/config//latency/filtered.h) \
    $(wildcard include/config//latency/filtered/width.h) \
    $(wildcard include/config//latency/filtered/resetvalue.h) \
    $(wildcard include/config//latency/en.h) \
    $(wildcard include/config//latency/en/width.h) \
    $(wildcard include/config//latency/en/resetvalue.h) \
    $(wildcard include/config//busy/filtered.h) \
    $(wildcard include/config//busy/filtered/width.h) \
    $(wildcard include/config//busy/filtered/resetvalue.h) \
    $(wildcard include/config//busy/en.h) \
    $(wildcard include/config//busy/en/width.h) \
    $(wildcard include/config//busy/en/resetvalue.h) \
    $(wildcard include/config//beats/filtered.h) \
    $(wildcard include/config//beats/filtered/width.h) \
    $(wildcard include/config//beats/filtered/resetvalue.h) \
    $(wildcard include/config//beats/en.h) \
    $(wildcard include/config//beats/en/width.h) \
    $(wildcard include/config//beats/en/resetvalue.h) \
    $(wildcard include/config//cmds/filtered.h) \
    $(wildcard include/config//cmds/filtered/width.h) \
    $(wildcard include/config//cmds/filtered/resetvalue.h) \
    $(wildcard include/config//cmds/en.h) \
    $(wildcard include/config//cmds/en/width.h) \
    $(wildcard include/config//cmds/en/resetvalue.h) \
    $(wildcard include/config//trace/en.h) \
    $(wildcard include/config//trace/en/width.h) \
    $(wildcard include/config//trace/en/resetvalue.h) \
    $(wildcard include/config//flush.h) \
    $(wildcard include/config//flush/width.h) \
    $(wildcard include/config//flush/resetvalue.h) \
    $(wildcard include/config//sat/en.h) \
    $(wildcard include/config//sat/en/width.h) \
    $(wildcard include/config//sat/en/resetvalue.h) \
    $(wildcard include/config//ctrl/src.h) \
    $(wildcard include/config//ctrl/src/width.h) \
    $(wildcard include/config//ctrl/src/resetvalue.h) \
    $(wildcard include/config//stall/mode.h) \
    $(wildcard include/config//stall/mode/width.h) \
    $(wildcard include/config//stall/mode/resetvalue.h) \
    $(wildcard include/config//atb/id/l.h) \
    $(wildcard include/config//atb/id/r.h) \
    $(wildcard include/config//atb/id/width.h) \
    $(wildcard include/config//atb/id/resetvalue.h) \
    $(wildcard include/config//reserved.h) \
    $(wildcard include/config//cpu3/tag/ram/sizes/l.h) \
    $(wildcard include/config//cpu3/tag/ram/sizes/r.h) \
    $(wildcard include/config//cpu3/tag/ram/sizes/width.h) \
    $(wildcard include/config//cpu3/tag/ram/sizes/resetvalue.h) \
    $(wildcard include/config//cpu2/tag/ram/sizes/l.h) \
    $(wildcard include/config//cpu2/tag/ram/sizes/r.h) \
    $(wildcard include/config//cpu2/tag/ram/sizes/width.h) \
    $(wildcard include/config//cpu2/tag/ram/sizes/resetvalue.h) \
    $(wildcard include/config//cpu1/tag/ram/sizes/l.h) \
    $(wildcard include/config//cpu1/tag/ram/sizes/r.h) \
    $(wildcard include/config//cpu1/tag/ram/sizes/width.h) \
    $(wildcard include/config//cpu1/tag/ram/sizes/resetvalue.h) \
    $(wildcard include/config//cpu0/tag/ram/sizes/l.h) \
    $(wildcard include/config//cpu0/tag/ram/sizes/r.h) \
    $(wildcard include/config//cpu0/tag/ram/sizes/width.h) \
    $(wildcard include/config//cpu0/tag/ram/sizes/resetvalue.h) \
    $(wildcard include/config//cpu3/coherency/mode.h) \
    $(wildcard include/config//cpu3/coherency/mode/width.h) \
    $(wildcard include/config//cpu3/coherency/mode/resetvalue.h) \
    $(wildcard include/config//cpu2/coherency/mode.h) \
    $(wildcard include/config//cpu2/coherency/mode/width.h) \
    $(wildcard include/config//cpu2/coherency/mode/resetvalue.h) \
    $(wildcard include/config//cpu1/coherency/mode.h) \
    $(wildcard include/config//cpu1/coherency/mode/width.h) \
    $(wildcard include/config//cpu1/coherency/mode/resetvalue.h) \
    $(wildcard include/config//cpu0/coherency/mode.h) \
    $(wildcard include/config//cpu0/coherency/mode/width.h) \
    $(wildcard include/config//cpu0/coherency/mode/resetvalue.h) \
    $(wildcard include/config//num/cpus/l.h) \
    $(wildcard include/config//num/cpus/r.h) \
    $(wildcard include/config//num/cpus/width.h) \
    $(wildcard include/config//num/cpus/resetvalue.h) \
    $(wildcard include/config/otp/width.h) \
    $(wildcard include/config/otp/range/l.h) \
    $(wildcard include/config/otp/range/r.h) \
    $(wildcard include/config/otp//ecc/par1.h) \
    $(wildcard include/config/otp//ecc/par1/width.h) \
    $(wildcard include/config/otp//ecc/par1/resetvalue.h) \
    $(wildcard include/config/otp//ecc1/l.h) \
    $(wildcard include/config/otp//ecc1/r.h) \
    $(wildcard include/config/otp//ecc1/width.h) \
    $(wildcard include/config/otp//ecc1/resetvalue.h) \
    $(wildcard include/config/otp//reserved1/l.h) \
    $(wildcard include/config/otp//reserved1/r.h) \
    $(wildcard include/config/otp//reserved1/width.h) \
    $(wildcard include/config/otp//reserved1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/chip/tm/data/l.h) \
    $(wildcard include/config/otp//crmu/otp/chip/tm/data/r.h) \
    $(wildcard include/config/otp//crmu/otp/chip/tm/data/width.h) \
    $(wildcard include/config/otp//crmu/otp/chip/tm/data/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lvm.h) \
    $(wildcard include/config/otp//crmu/otp/lvm/width.h) \
    $(wildcard include/config/otp//crmu/otp/lvm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/mlvm.h) \
    $(wildcard include/config/otp//crmu/otp/mlvm/width.h) \
    $(wildcard include/config/otp//crmu/otp/mlvm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/disable/mrdten/inversion.h) \
    $(wildcard include/config/otp//crmu/otp/disable/mrdten/inversion/width.h) \
    $(wildcard include/config/otp//crmu/otp/disable/mrdten/inversion/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/wbt/l.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/wbt/r.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/wbt/width.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/wbt/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/rdt/l.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/rdt/r.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/rdt/width.h) \
    $(wildcard include/config/otp//crmu/otp/scr/ram/rdt/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/wbt/l.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/wbt/r.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/wbt/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/wbt/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/rdt/l.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/rdt/r.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/rdt/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/ram/rdt/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/mrdten/inversion.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/mrdten/inversion/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/mrdten/inversion/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/mlvm.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/mlvm/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/mlvm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/lvm.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/lvm/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/lvm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/tm/l.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/tm/r.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/tm/width.h) \
    $(wildcard include/config/otp//crmu/otp/id/scr/ram/tm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/rom/tm/l.h) \
    $(wildcard include/config/otp//crmu/otp/rom/tm/r.h) \
    $(wildcard include/config/otp//crmu/otp/rom/tm/width.h) \
    $(wildcard include/config/otp//crmu/otp/rom/tm/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp2/l.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp2/r.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp2/width.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp2/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp1/l.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp1/r.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp1/width.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp0/l.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp0/r.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp0/width.h) \
    $(wildcard include/config/otp//crmu/otp/spl/calib/inp0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min1/l.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min1/r.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min1/width.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min0/l.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min0/r.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min0/width.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/min0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/max/l.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/max/r.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/max/width.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/ref/max/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/bg/l.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/bg/r.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/bg/width.h) \
    $(wildcard include/config/otp//crmu/otp/pvtmon/bg/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/vtrap/enable.h) \
    $(wildcard include/config/otp//crmu/otp/avs/vtrap/enable/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/vtrap/enable/resetvalue.h) \
    $(wildcard include/config/otp//ecc/par0.h) \
    $(wildcard include/config/otp//ecc/par0/width.h) \
    $(wildcard include/config/otp//ecc/par0/resetvalue.h) \
    $(wildcard include/config/otp//ecc0/l.h) \
    $(wildcard include/config/otp//ecc0/r.h) \
    $(wildcard include/config/otp//ecc0/width.h) \
    $(wildcard include/config/otp//ecc0/resetvalue.h) \
    $(wildcard include/config/otp//valid.h) \
    $(wildcard include/config/otp//valid/width.h) \
    $(wildcard include/config/otp//valid/resetvalue.h) \
    $(wildcard include/config/otp//reserved0/l.h) \
    $(wildcard include/config/otp//reserved0/r.h) \
    $(wildcard include/config/otp//reserved0/width.h) \
    $(wildcard include/config/otp//reserved0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/5.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/5/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/5/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/3dgfx/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/3dgfx/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/3dgfx/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/1.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/1/width.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/1.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/1/width.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/usb/phy/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/usb/phy/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/usb/phy/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/usb/phy/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/serdes/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/serdes/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/serdes/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/serdes/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/valid.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/valid/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/valid/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/p/process/l.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/p/process/r.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/p/process/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/p/process/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/n/process/l.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/n/process/r.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/n/process/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/sram/mon/n/process/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/adjust/voltage/l.h) \
    $(wildcard include/config/otp//crmu/otp/avs/adjust/voltage/r.h) \
    $(wildcard include/config/otp//crmu/otp/avs/adjust/voltage/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/adjust/voltage/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/ccu/dbg/acc/dis.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/ccu/dbg/acc/dis/width.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/ccu/dbg/acc/dis/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/bypass/cpu/powerup/n.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/bypass/cpu/powerup/n/width.h) \
    $(wildcard include/config/otp//crmu/otp/iproc/bypass/cpu/powerup/n/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/neutralize/enable.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/neutralize/enable/width.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/neutralize/enable/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/sotp/neutralize/enable.h) \
    $(wildcard include/config/otp//crmu/otp/sotp/neutralize/enable/width.h) \
    $(wildcard include/config/otp//crmu/otp/sotp/neutralize/enable/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div3/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div3/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div3/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div3/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div2/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div2/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div2/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div2/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div1/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div1/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div1/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div1/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div0/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div0/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div0/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/post/div0/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/ndiv/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/ndiv/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/ndiv/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/ndiv/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/pdiv/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/pdiv/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/pdiv/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcpll/pdiv/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ldo/op/ctrl/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ldo/op/ctrl/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ldo/op/ctrl/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ldo/op/ctrl/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/range/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/range/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/range/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/range/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/fb/div2.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/fb/div2/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/vco/fb/div2/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/rstb/sel/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/rstb/sel/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/rstb/sel/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/rstb/sel/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pwm/rate/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pwm/rate/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pwm/rate/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pwm/rate/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pdiv/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pdiv/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pdiv/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/pdiv/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch2/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch2/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch2/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch2/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch1/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch1/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch1/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch1/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch0/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch0/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch0/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/post/div/ch0/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ndiv/int/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ndiv/int/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ndiv/int/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/genpll/ndiv/int/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/rgmii/power/required.h) \
    $(wildcard include/config/otp//crmu/otp/rgmii/power/required/width.h) \
    $(wildcard include/config/otp//crmu/otp/rgmii/power/required/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/power/required.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/power/required/width.h) \
    $(wildcard include/config/otp//crmu/otp/bbl/power/required/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/adc/power/required.h) \
    $(wildcard include/config/otp//crmu/otp/adc/power/required/width.h) \
    $(wildcard include/config/otp//crmu/otp/adc/power/required/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/rom/jump/to/sbl/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/rom/jump/to/sbl/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/rom/jump/to/sbl/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/export/mode.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/export/mode/width.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/export/mode/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/smau/crypto/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/smau/crypto/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/smau/crypto/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/width.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/0.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/0/width.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/uart/disable/0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/0.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/0/width.h) \
    $(wildcard include/config/otp//crmu/otp/crmu/bspi/disable/0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ars/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/ars/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/ars/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ars/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/avs/disable.h) \
    $(wildcard include/config/otp//crmu/otp/avs/disable/width.h) \
    $(wildcard include/config/otp//crmu/otp/avs/disable/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/srab/wrap/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/srab/wrap/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/srab/wrap/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/sram/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/sram/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/sram/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ddr/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ddr/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ddr/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pnor/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/pnor/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/pnor/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/amac/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/amac/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/amac/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/mdio/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/mdio/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/mdio/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/smbus/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/smbus/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/smbus/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/smbus/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/gpio/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/gpio/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/gpio/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/gpio/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/ip/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/ip/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/ip/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/dmac/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/dmac/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/dmac/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/a9jtag/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/a9jtag/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/a9jtag/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/uart/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/uart/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/uart/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/uart/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/spi/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/spi/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/spi/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/spi/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/nand/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/nand/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/nand/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/qspi/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/qspi/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/qspi/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/sdio/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/sdio/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/sdio/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/sdio/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/phy/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/phy/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/phy/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/pcie/phy/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/usb/dis/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/usb/dis/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/usb/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/usb/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/neon/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/neon/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/neon/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/keypad/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/keypad/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/keypad/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/adc/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/adc/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/adc/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/pwm/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/pwm/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/pwm/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/smart/card/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/smart/card/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/smart/card/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/crypto/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/gfx/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/gfx/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/gfx/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/lcd/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/lcd/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/lcd/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/can/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/can/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/can/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/camera/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/camera/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/camera/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/mipi/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/mipi/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/mipi/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/audio/dis/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/audio/dis/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/audio/dis/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/spl/sh/en/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/spl/sh/en/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/spl/sh/en/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/spl/sh/en/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/sku/id/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/sku/id/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/sku/id/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/sku/id/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/l2c/addrfiltering/range/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/l2c/addrfiltering/range/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/l2c/addrfiltering/range/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/l2c/addrfiltering/range/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/limit/vco/freq/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/limit/vco/freq/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/limit/vco/freq/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/limit/vco/freq/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spniden/n/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spniden/n/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spniden/n/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spiden/n/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spiden/n/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/spiden/n/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/niden/n/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/niden/n/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/niden/n/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/deviceen/n/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/deviceen/n/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/deviceen/n/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dbgen/n/clkaon.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dbgen/n/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/ihost/dbgen/n/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimhyb/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimhyb/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimhyb/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimhyb/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimdac/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimdac/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimdac/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/gphy/trimdac/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/3/4/l.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/3/4/r.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/3/4/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/3/4/resetvalue.h) \
    $(wildcard include/config/otp//crmu/treset/enable/1.h) \
    $(wildcard include/config/otp//crmu/treset/enable/1/width.h) \
    $(wildcard include/config/otp//crmu/treset/enable/1/resetvalue.h) \
    $(wildcard include/config/otp//crmu/treset/enable/0.h) \
    $(wildcard include/config/otp//crmu/treset/enable/0/width.h) \
    $(wildcard include/config/otp//crmu/treset/enable/0/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/2.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/2/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/2/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/unused/l.h) \
    $(wildcard include/config/otp//crmu/otp/unused/r.h) \
    $(wildcard include/config/otp//crmu/otp/unused/width.h) \
    $(wildcard include/config/otp//crmu/otp/unused.h) \
    $(wildcard include/config/otp//crmu/otp/unused/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/flag.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/flag/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/flag/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/bbl/present/flag.h) \
    $(wildcard include/config/otp//crmu/aon/bbl/present/flag/width.h) \
    $(wildcard include/config/otp//crmu/aon/bbl/present/flag/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/l.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/r.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/dout/resetvalue.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/out/en/l.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/out/en/r.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/out/en/width.h) \
    $(wildcard include/config/otp//crmu/aon/gpio/pmu/control/out/en/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/device/id/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/device/id/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/device/id/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/device/id/clkaon/resetvalue.h) \
    $(wildcard include/config/otp//crmu/otp/revision/id/clkaon/l.h) \
    $(wildcard include/config/otp//crmu/otp/revision/id/clkaon/r.h) \
    $(wildcard include/config/otp//crmu/otp/revision/id/clkaon/width.h) \
    $(wildcard include/config/otp//crmu/otp/revision/id/clkaon/resetvalue.h) \
    $(wildcard include/config/segment/l.h) \
    $(wildcard include/config/segment/r.h) \
    $(wildcard include/config/segment/width.h) \
    $(wildcard include/config/segment/lock/bit/l.h) \
    $(wildcard include/config/segment/lock/bit/r.h) \
    $(wildcard include/config/segment/lock/bit/width.h) \
  include/asm-generic/gpio.h \
    $(wildcard include/config/gpiolib.h) \
    $(wildcard include/config/of/gpio.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/gpio/sysfs.h) \
  include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
  include/linux/input/matrix_keypad.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/slab.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/slub/debug.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/pm_runtime.h \
  include/nexgo/bcm5830x_pins.h \
    $(wildcard include/config/alt0.h) \
    $(wildcard include/config/alt1.h) \
    $(wildcard include/config/alt2.h) \
    $(wildcard include/config/alt3.h) \
    $(wildcard include/config/gpio.h) \
    $(wildcard include/config/end.h) \
    $(wildcard include/config/func.h) \
  include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/linux/clk.h \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/have/clk/prepare.h) \
    $(wildcard include/config/have/clk.h) \
  arch/arm/plat-iproc/include/mach/hardware.h \
  arch/arm/include/generated/asm/sizes.h \
  include/asm-generic/sizes.h \
  arch/arm/plat-iproc/include/mach/memory.h \
    $(wildcard include/config/bcm/ram/base.h) \
    $(wildcard include/config/bcm/ram/start/reserved/size.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/proc-fns.h \
  /home/chenyujie/kernel/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
  include/asm-generic/pgtable-nopud.h \
  /home/chenyujie/kernel/arch/arm/include/asm/pgtable-hwdef.h \
  /home/chenyujie/kernel/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/chenyujie/kernel/arch/arm/include/asm/pgtable-2level.h \
  include/asm-generic/pgtable.h \
    $(wildcard include/config/transparent/hugepage.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/broadcom/custom/sendfile.h) \
    $(wildcard include/config/bcm/custom/recvfile.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  include/asm-generic/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
    $(wildcard include/config/uprobes.h) \
  /home/chenyujie/kernel/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  arch/arm/mach-iproc/include/mach/io_map.h \
  include/nexgo/nexgo_pal.h \

/home/chenyujie/mykeypad/platform_driver.o: $(deps_/home/chenyujie/mykeypad/platform_driver.o)

$(deps_/home/chenyujie/mykeypad/platform_driver.o):
