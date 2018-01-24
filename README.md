# F2FS Loopback Bug Workaround
## VR25 @ XDA Developers


### Disclaimer
- This mod is provided as is, without warranty of any kind. I shall not be held responsible for anything that may go wrong due to the use/misuse of it.


### Description
- Some kernels from devices with F2FS-formatted data partition (i.e., Motorola) have a bug that prevents loopback devices (.img files) from being mounted read-write. This limits systemless modifications that can be achieved with Magisk.
- This module works by moving magisk.img to the cache partition (`EXT4`) and linking it to its actual location (/data/adb or /data). The other half of the process consists on automatically recreating magisk_merge.img shortly after boot and handling it the same way as magisk.img.
- With this workaround, a patched kernel is dispensable.
- Cache partition's size is the only limiting factor -- and that's pretty much self-explanatory.
- The module automatically backs up (on boot) & restores (on install/update) /cache/magisk_img -- backup file: /data/magisk_img_bkp
- Due to the nature of the bug, this module can only be installed from TWRP.


### Online Info/Support
- [Git Repository](https://github.com/Magisk-Modules-Repo/f2fs-loopback-bug-workaround)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/guide-magisk-official-version-including-t3577875)


### Changelog

**2018.1.24 (201801240)**
- Automatically find and remove original Magisk image files so that users don't have to
- General optimizations

**2018.1.14 (201801140)**
- Automatically backup (on boot) & restore (on install/update) /cache/magisk_img -- backup file: /data/magisk_img_bkp
- Better device compatibility, regardless of TWRP F2FS patching status
- Works with all Magisk versions currently in use

**2018.1.1 (201801010)**
- Auto-remove $IMG symlink before installing -- people who followed the manual workaround no longer need to do anything prior to installing
- Enhanced magisk_merge.img creation service
- Updated reference
