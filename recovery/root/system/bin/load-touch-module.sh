set +e

main_mod="focaltech_tp.ko"
mod_dir="/lib/modules"
mod_deps=(mt6359p-accdet.ko xiaomi_touch.ko hq_notifier.ko)

# load the main module's dependencies
for dep in "${mod_deps[@]}"; do
  insmod $mod_dir/$dep
done

# load the main module
insmod $mod_dir/$main_mod

exit 0
