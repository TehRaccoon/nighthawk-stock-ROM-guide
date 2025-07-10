#!/usr/bin/env bash


# abl
fastboot flash abl_a               abl.elf

# aop
fastboot flash aop_a               aop.mbn

# aop configuration
fastboot flash aop_config_a        aop_devcfg.mbn

# bluetooth
fastboot flash bluetooth_a         BTFM.bin

# cpucp
fastboot flash cpucp_a             cpucp.elf

# devcfg
fastboot flash devcfg_a            devcfg.mbn

# featenabler
fastboot flash featenabler_a       featenabler.mbn

# dtbo
fastboot flash dtbo_a              dtbo.img

# rtice (Runtime ICE firmware)
fastboot flash rtice               rtice.mbn

# dsp
fastboot flash dsp_a               dspso.bin

# hyp
fastboot flash hyp_a               hypvm.mbn

# imagefv (Image Flash Volume)
fastboot flash imagefv_a           imagefv.elf

# keymaster
fastboot flash keymaster_a         keymint.mbn

# modem
fastboot flash modem_a             NON-HLOS.bin

# qupfw
fastboot flash qupfw_a             qupv3fw.elf

# multiimgqti
fastboot flash multiimgqti_a       multi_image_qti.mbn

# multiimgoem
fastboot flash multiimgoem_a       multi_image.mbn

# qweslicstore
fastboot flash qweslicstore_a      qweslicstore.bin

# xbl_config
fastboot flash xbl_config_a        xbl_config.elf

# xbl
fastboot flash xbl_a               xbl_s.melf

# xbl ramdump
fastboot flash xbl_ramdump_a       XblRamdump.elf

# boot
fastboot flash boot_a              boot.img

# recovery
fastboot flash recovery_a          recovery.img

# shrm
fastboot flash shrm_a              shrm.elf

# tz
fastboot flash tz_a                tz.mbn

# uefi
fastboot flash uefi_a              uefi.elf

# uefisecapp
fastboot flash uefisecapp_a        uefi_sec.mbn

# vendor_boot
fastboot flash vendor_boot_a       vendor_boot.img

# vbmeta (Verified Boot metadata)
fastboot flash vbmeta              vbmeta.img
fastboot flash vbmeta_system       vbmeta_system.img

# logfs
fastboot flash logfs               logfs_ufs_8mb.bin

# metadata
fastboot flash metadata            metadata.img

# super
fastboot flash super               super.img

# storsec
fastboot flash storsec             storsec.mbn

# toolsfv
fastboot flash toolsfv             tools.fv

# userdata
fastboot flash userdata            userdata.img
