import common
import edify_generator

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallRadio(img_name, img_file, partition, info):
    common.ZipWriteStr(info.output_zip, img_name, img_file)
    info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def InstallAboot(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/emmc_appsboot.mbn")
    InstallRadio("emmc_appsboot.mbn", img_file, "/dev/block/bootdevice/by-name/aboot", info)

def InstallRpm(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/rpm.mbn")
    InstallRadio("rpm.mbn", img_file, "/dev/block/bootdevice/by-name/rpm", info)

def InstallTz(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/tz.mbn")
    InstallRadio("tz.mbn", img_file, "/dev/block/bootdevice/by-name/tz", info)

def InstallModem(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/NON-HLOS.bin")
    InstallRadio("NON-HLOS.bin", img_file, "/dev/block/bootdevice/by-name/modem", info)

def InstallSbl1(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/sbl1.mbn")
    InstallRadio("sbl1.mbn", img_file, "/dev/block/bootdevice/by-name/sbl1", info)

def InstallSplash(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/splash.img")
    InstallRadio("splash.img", img_file, "/dev/block/bootdevice/by-name/splash", info)

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    info.script.AppendExtra(('ui_print("Writing radio image...");'))
    InstallAboot(info)
    InstallRpm(info)
    InstallTz(info)
    InstallModem(info)
    InstallSbl1(info)
    InstallSplash(info)
