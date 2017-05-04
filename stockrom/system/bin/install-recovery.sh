#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11302912 dedb98be36684edf00a0d9127dfed0f2c9b5b504 8761344 7e54b847874d2f3daf0dcff5a04abe5c07e6e8a8
fi

if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:11302912:dedb98be36684edf00a0d9127dfed0f2c9b5b504; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:8761344:7e54b847874d2f3daf0dcff5a04abe5c07e6e8a8 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS dedb98be36684edf00a0d9127dfed0f2c9b5b504 11302912 7e54b847874d2f3daf0dcff5a04abe5c07e6e8a8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
