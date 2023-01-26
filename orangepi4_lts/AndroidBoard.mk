UBOOT_DEFCONFIG := orangepi_4_defconfig
# Use Rockchip miniloader
UBOOT_ROCKCHIP_SPL := true

include $(TOP)/device/xunlong/common/uboot_rk.mk

KERNEL_CONFIG_FRAGMENTS := $(TOP)/device/xunlong/orangepi4/orangepi4_lts/kernel.config
KERNEL_DTB := rockchip/rk3399-orangepi.dtb

include $(TOP)/device/xunlong/common/kernel.mk

# Include uboot and kernel to default target
droidcore-unbundled: uboot_full kernel dtb

# boot.img depends on kernel and dtb
bootimage: kernel dtb