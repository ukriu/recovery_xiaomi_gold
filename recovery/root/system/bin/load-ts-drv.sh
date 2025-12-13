#!/sbin/sh
set +e

moddir=/lib/modules
deps=(mt6359p-accdet.ko xiaomi_touch.ko hq_notifier.ko)

# load dependencies
for dep in "${deps[@]}"; do
  insmod $moddir/$dep
done

# load the focaltech touchscreen driver
insmod $moddir/focaltech_tp.ko

# load the goodix touchscreen driver
insmod $moddir/gt9916r.ko

exit 0
