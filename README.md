# F2FS Loopback Bug Workaround
## VR25 @ XDA Developers


### Disclaimer
- This mod is provided as is, without warranty of any kind. I shall not be held responsible for anything that may go wrong due to the use/misuse of it.

### Description
- F2FS loopback bug workaround for full Magisk functionality -- without a custom kernel. Install from TWRP and forget.
- This module moves magisk.img to the cache partition (EXT4) and links it to the actual location (/data/adb or /data). The other half of the process consists on automatically recreating magisk_merge.img shortly after boot and handing it the same way as magisk.img.
- As you may have thought by now, cache partition's size is by far, the only real limiting factor here.

### Online Info/Support
- [Git Repository](https://github.com/Magisk-Modules-Repo/f2fs-loopback-bug-workaround)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/magisk-module-f2fs-loopback-bug-workaround-t3668427)



### Changelog

**2017.12.31 (201712310)**
- Initial version
- Initial release
