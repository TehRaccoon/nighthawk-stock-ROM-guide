# HMD Fusion (nighthawk) stock ROM flashing guide

> [!NOTE]
> This guide assumes you are ready to use android tools such as `adb` and `fastboot`
## Stock ROM flashing guide

1. Unlock your bootloader, here is a nice guide for that https://www.techmesto.com/unlock-bootloader-on-hmd-fusion/
2. download the stock ROM package `HMDSW_nhk_144A-0-00WW-B01_user_devicekit.zip`, this site worked fine for me: https://www.techmesto.com/download-hmd-fusion-stock-rom-firmware-file/
3. extract `HMDSW_nhk_144A-0-00WW-B01_user_devicekit.zip`, then extract `romAll.zip` inside of it. We only need the contents of romAll.zip
4. put your `fastboot.exe` into the folder where you extracted romAll.zip
5. put my `flash_all.bat` script into the folder where you extracted romAll.zip
6. boot the phone into fastboot mode by powering it up using power+vol_down buttons
7. open a command line (ideally powershell if on windows) and navigate to the folder with extracted romAll.zip, fastboot.exe and flash_all.bat
8. run flash_all.bat from the command line, it should start flashing everything
9. If everything went smoothly, reboot the phone `fastboot reboot`

> [!TIP]
> If the flashing process is failing, make sure you are using a good quality USB cable and plug it directly into your PC. Do not plug it into a USB hub or USB extenders. I had this exact problem when flashing first time :)

## Useful info

After flashing the only boot slot that contains anything will be slot a, so don't forget to switch to it using `fastboot set_active a` or you will bootloop (the script does this automatically).

The order of flashing and which files go into which partitions is written in `rom.json` which is directly inside `HMDSW_nhk_144A-0-00WW-B01_user_devicekit.zip`

Specifically, this is the important part of the `rom.json` from which I created the `flash_all.bat` script. The first command in the script is `fastboot.exe flash modem_a NON-HLOS.bin` which corresponds with the first entry in the "Pre_Partitions" list in the json.
```json
    "Pre_Partitions": {
        "modem_a":"NON-HLOS.bin",
        "modem_b":"NON-HLOS.bin",
        "bluetooth_a":"BTFM.bin",
        "bluetooth_b":"BTFM.bin",
        "dsp_a":"dspso.bin",
        "dsp_b":"dspso.bin",
        "qupfw_a":"qupv3fw.elf",
        "qupfw_b":"qupv3fw.elf",
        "multiimgqti_a":"multi_image_qti.mbn",
        "multiimgqti_b":"multi_image_qti.mbn",
        "multiimgoem_a":"multi_image.mbn",
        "multiimgoem_b":"multi_image.mbn",
        "ddr":"zeros_5sectors.bin",
        "uefi_a":"uefi.elf",
        "uefi_b":"uefi.elf",
        "xbl_a":"xbl_s.melf",
        "xbl_b":"xbl_s.melf",
        "xbl_config_a":"xbl_config.elf",
        "xbl_config_b":"xbl_config.elf",
        "shrm_a":"shrm.elf",
        "shrm_b":"shrm.elf",
        "imagefv_a":"imagefv.elf",
        "imagefv_b":"imagefv.elf",
        "xbl_ramdump_a":"XblRamdump.elf",
        "xbl_ramdump_b":"XblRamdump.elf",
        "logfs":"logfs_ufs_8mb.bin",
        "toolsfv":"tools.fv",
        "aop_a":"aop.mbn",
        "aop_b":"aop.mbn",
        "aop_config_a":"aop_devcfg.mbn",
        "aop_config_b":"aop_devcfg.mbn",
        "tz_a":"tz.mbn",
        "tz_b":"tz.mbn",
        "hyp_a":"hypvm.mbn",
        "hyp_b":"hypvm.mbn",
        "devcfg_a":"devcfg.mbn",
        "devcfg_b":"devcfg.mbn",
        "rtice":"rtice.mbn",
        "featenabler_a":"featenabler.mbn",
        "featenabler_b":"featenabler.mbn",
        "uefisecapp_a":"uefi_sec.mbn",
        "uefisecapp_b":"uefi_sec.mbn",
        "storsec":"storsec.mbn",
        "keymaster_a":"keymint.mbn",
        "keymaster_b":"keymint.mbn",
        "cpucp_a":"cpucp.elf",
        "cpucp_b":"cpucp.elf",
        "abl_a":"abl.elf",
        "abl_b":"abl.elf",
        "boot_a":"boot.img",
        "boot_b":"boot.img",
        "dtbo_a":"dtbo.img",
        "dtbo_b":"dtbo.img",
        "super":"super.img",
        "vbmeta_a":"vbmeta.img",
        "vbmeta_b":"vbmeta.img",
        "vbmeta_system_a":"vbmeta_system.img",
        "vbmeta_system_b":"vbmeta_system.img",
        "vendor_boot_a":"vendor_boot.img",
        "vendor_boot_b":"vendor_boot.img",
        "recovery_a":"recovery.img",
        "recovery_b":"recovery.img",
        "qweslicstore_a":"qweslicstore.bin",
        "qweslicstore_b":"qweslicstore.bin",
    }
```
