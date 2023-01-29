TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Memory layouts
BOARD_KERNEL_BASE := 0x0
BOARD_KERNEL_OFFSET := 0x02400000
BOARD_RAMDISK_OFFSET := 0x06000000

# boot.img generation config
BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --base 0x0 \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--header_version $(BOARD_BOOT_HEADER_VERSION)

# init_boot.img generation config
BOARD_INIT_BOOT_HEADER_VERSION := 0
BOARD_MKBOOTIMG_INIT_ARGS += --base 0x0 \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

BOARD_PREBUILT_DTBIMAGE_DIR := $(PRODUCT_OUT)/kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

GENERIC_KERNEL_CMDLINE += androidboot.hardware=orangepi4 androidboot.selinux=permissive
GENERIC_KERNEL_CMDLINE += printk.devkmsg=on

# Enable ramdisk init console (only works with userdebug)
# GENERIC_KERNEL_CMDLINE += androidboot.first_stage_console=1

BOARD_AVB_ENABLE := false

# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE := true
TARGET_RECOVERY_FSTAB := device/xunlong/orangepi4/recovery.fstab
