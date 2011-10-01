USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/semc/es209ra/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := qsd8250
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := es209ra

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00c40000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x160a0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x1d100000
BOARD_FLASH_BLOCK_SIZE := 131072

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock2
BOARD_SYSTEM_FILESYSTEM := yaffs2
BOARD_DATA_DEVICE := /dev/block/mtdblock3
BOARD_DATA_FILESYSTEM := yaffs2
BOARD_CACHE_DEVICE := /dev/block/mtdblock1
BOARD_CACHE_FILESYSTEM := yaffs2
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p1
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_PREBUILT_KERNEL := device/semc/es209ra/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true