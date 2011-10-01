cd ramdisk_wip
find . | cpio -o -H newc | gzip > ../ramdisk.cpio.gz
