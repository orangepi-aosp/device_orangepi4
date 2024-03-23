# GKI
BOARD_USES_GENERIC_KERNEL_IMAGE := true
# vendor_boot contains recovery, no dedicated recovery partition
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_VENDOR_RAMDISK := vendor_ramdisk
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Memory layouts
# BOARD_KERNEL_BASE := 0x0
# BOARD_KERNEL_OFFSET := 0x02400000
# BOARD_RAMDISK_OFFSET := 0x06000000

# boot.img and vendor_boot.img generation config
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := \
	--header_version $(BOARD_BOOT_HEADER_VERSION)

# init_boot.img generation config
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_INIT_ARGS += \
	--header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

# Add dtb to vendor_boot.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(PRODUCT_OUT)/kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

GENERIC_KERNEL_CMDLINE += \
	console=ttyS2,1500000n8 \
	androidboot.hardware=orangepi4 \
	androidboot.selinux=permissive \
	printk.devkmsg=on

# Enable ramdisk init console (only works with userdebug)
# GENERIC_KERNEL_CMDLINE += androidboot.first_stage_console=1

BOARD_AVB_ENABLE := false

# Recovery
TARGET_RECOVERY_FSTAB := device/xunlong/orangepi4/recovery.fstab

