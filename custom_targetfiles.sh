#/bin/bash

TARGET_DIR=out/merged_target_files

cp -f other/file_contexts $TARGET_DIR/META/
cp -f other/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/splash.img $TARGET_DIR/BOOTABLE_IMAGES/
