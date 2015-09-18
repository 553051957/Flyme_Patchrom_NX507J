#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10696704:b8349ba5041d6d5c216e91cd6469dcc2f3afcd9b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7938048:c9f009ae2b86bcdf2aa15292e7f948a4806c25c5 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b8349ba5041d6d5c216e91cd6469dcc2f3afcd9b 10696704 c9f009ae2b86bcdf2aa15292e7f948a4806c25c5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
