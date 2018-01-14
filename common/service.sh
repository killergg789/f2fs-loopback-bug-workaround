#!/system/bin/sh
# F2FS Loopback Bug Workaround -- magisk_merge.img
# VR25 @ XDA Developers

PATH="/sbin/.core/busybox:/dev/magisk/bin:$PATH"
ModPath=${0%/*}

mount -o remount,rw /cache

[ -f /cache/magisk_img ] && cp -af /cache/magisk_img /data/magisk_img_bkp

make_ext4fs -l 8M /cache/magisk_merge_img 2>/dev/null
ln -s /cache/magisk_merge_img /data/adb/magisk_merge.img 2>/dev/null
ln -s /cache/magisk_merge_img /data/magisk_merge.img 2>/dev/null
