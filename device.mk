DEVICE_MANIFEST_FILE := device/xunlong/orangepi4/manifest.xml
DEVICE_MATRIX_FILE += device/xunlong/orangepi4/compatibility_matrix.xml

# Misc
PRODUCT_COPY_FILES += \
	device/xunlong/orangepi4/fastboot.sh:$(PRODUCT_OUT)/fastboot.sh

# Ramdisk
PRODUCT_COPY_FILES += \
	device/xunlong/orangepi4/fstab.ramdisk:$(TARGET_COPY_OUT_RAMDISK)/fstab.orangepi4