#!/system/bin/sh
# Apply after Android has finished booting so HyperOS cannot overwrite the display override.
until [ "$(getprop sys.boot_completed)" = 1 ]; do
  sleep 2
done
wm size 1020x2340
wm scaling off
