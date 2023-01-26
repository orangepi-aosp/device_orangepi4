include device/xunlong/orangepi4/BoardConfigCommon.mk

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

KERNEL_VERSION := 5.15

BOARD_KERNEL_BINARIES := kernel-$(KERNEL_VERSION)
BOARD_KERNEL_VERSION := $(KERNEL_VERSION)

BOARD_USES_GENERIC_KERNEL_IMAGE := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864          # 64 MiB
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608     # 8 MiB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736      # 1.5 GiB
BOARD_VENDORIMAGE_PARTITION_SIZE := 268435456       # 256 MiB
BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 67108864    # 64 MiB
BOARD_VENDOR_DLKMIMAGE_PARTITION_SIZE := 33554432   # 32 MiB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4294967296    # 4 GiB

