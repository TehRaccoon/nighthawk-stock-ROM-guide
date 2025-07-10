# HMD Fusion stock ROM flashing guide

- HMD Fusion is also known as "nighthawk"
- This guide contains rudimentary instructions how to flash stock ROM and how to unlock the bootloader of HMD Fusion (nighthawk)
## Stock ROM flashing guide

**it might be required to unlock the bootloader**. I don't know because I unlocked it before trying to flash the stock ROM

1. download `HMDSW_nhk_2430-0-00WW-B01_user_devicekit.zip`, this site worked fine for me: https://www.techmesto.com/download-hmd-fusion-stock-rom-firmware-file/
2. extract `HMDSW_nhk_2430-0-00WW-B01_user_devicekit.zip`, then extract `romAll.zip` inside of it. We only need the contents of romAll.zip
3. have fastboot installed and ready on your computer (I won't go into details for that as it is different for every OS, you are welcome to add a guide for that if you like)
4. now boot the phone into fastboot mode by powering it up using power+vol_down buttons
5. (if it is required, unlock the bootloader)
6. switch to slot_a `fastboot set_active a`
7. in your console or terminal, navigate to the directory with extracted romAll.zip
8. look into `flash_slot_a.sh` and run every `fastboot` command in there, from top to bottom, do not change the order of flashing or it might not work afterwards.
	1. ignore the lines starting with #, those are just leftover comments for organizing everything
	2. if you are handy with linux or powershell, just run the flashing script inside the romAll directory :)

### Minor issues
I only got the slot_a working, slot_b never boots, I might have a clue why that is though
![Screenshot of super.img directory tree](/screenshot_super_img.png?raw=true "Optional Title")
In the super.img it seems that only slot_a partition images have any data on them, I guess if one were to copy them to slot_b files, both slots might be bootable then. Or just switch the names from "a" to "b" so it doesn't touch slot_a and only writes to slot_b partitions. I haven't tested any of that though, this is just an idea for later.

## Unlocking the bootloader
https://www.techmesto.com/unlock-bootloader-on-hmd-fusion/ <- there is a handy site which has a more exhaustive guide for unlocking than what I have written here

1. boot the phone normally into Android
2. get to the developer menu
3. enable "OEM unlocking"
4. shutdown the phone
5. boot into fastboot mode by powering it up using power+vol_down buttons at the same time
6. have fastboot installed and ready on your computer (I won't go into details for that as it is different for every OS, you are welcome to add a guide for that if you like)
7. connect your phone to your computer via USB
8. try this command: `fastboot devices` and it should show 1 device
	1. If this doesn't work you gotta install USB drivers for HMD Fusion (this is again different for every OS)
	2. ...or use a non-scuffed USB cable
9. use `fastboot oem unlock_factory` to unlock the bootloader
