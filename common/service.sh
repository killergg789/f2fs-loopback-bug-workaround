#!/system/bin/sh
# F2FS Loopback Bug Workaround -- magisk_merge.img
# VR25 @ XDA Developers


PATH="/sbin/.core/busybox:/dev/magisk/bin:$PATH"
ModPath=${0%/*}


if [ -e /data/adb/magisk.img ]; then
	MPath=/data/adb/magisk_merge.img
else
	MPath=/data/magisk_merge.img
fi

mount -o remount,rw /cache

if [ ! -f /cache/magisk_merge_img ] || [ ! -e $MPath ]; then
	make_ext4fs -l 8M /cache/magisk_merge_img
	ln -s /cache/magisk_merge_img $MPath
	ln -s /cache/magisk_merge_img /data/magisk_merge.img
fi
