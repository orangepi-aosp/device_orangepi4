UBOOT_DEFCONFIG := orangepi_4_defconfig
# Use Rockchip miniloader
UBOOT_ROCKCHIP_SPL := true

include $(TOP)/device/xunlong/common/uboot_rk.mk

KERNEL_VERSION := 5.15
KERNEL_SRC := $(TOP)/kernel/android13-5.15-lts
KERNEL_CONFIG_FRAGMENTS := $(TOP)/device/xunlong/orangepi4/orangepi4_lts/opi4lts.fragment
KERNEL_CONFIG_FRAGMENTS += $(KERNEL_SRC)/arch/arm64/configs/rockpi4_gki.fragment
KERNEL_DTB := rockchip/rk3399-orangepi.dtb

include $(TOP)/device/xunlong/common/kernel.mk

# Include uboot and kernel to default target
droidcore-unbundled: uboot_full kernel dtb

# boot.img depends on kernel and dtb
bootimage: kernel dtb