#!/sbin/sh
set +e

mod_dir="/lib/modules"
main_mod="ft3683g.ko"
deps=(
  switch_class.ko
  xiaomi.ko
)

# load the modules
for dep in ${deps[@]}; do
  insmod $mod_dir/$dep
done

# load the main module
insmod $mod_dir/$main_mod

exit 0
