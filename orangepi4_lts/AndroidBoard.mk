UBOOT_DEFCONFIG := orangepi_4_defconfig
# Use Rockchip miniloader
UBOOT_ROCKCHIP_SPL := true

include $(TOP)/device/xunlong/common/uboot_rk.mk
include $(TOP)/device/xunlong/common/kernel.mk

# Include uboot and kernel to default target
droidcore-unbundled: uboot_full kernel