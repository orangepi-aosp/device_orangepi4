UBOOT_DEFCONFIG := orangepi_4_defconfig
# Use Rockchip miniloader
UBOOT_ROCKCHIP_SPL := true

include $(TOP)/device/xunlong/common/uboot_rk.mk
