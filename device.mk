DEVICE_MANIFEST_FILE := device/xunlong/orangepi4/manifest.xml
DEVICE_MATRIX_FILE += device/xunlong/orangepi4/compatibility_matrix.xml

# Misc
PRODUCT_COPY_FILES += \
	device/xunlong/orangepi4/fastboot.sh:$(PRODUCT_OUT)/fastboot.sh

# Ramdisk
PRODUCT_COPY_FILES += \
	device/xunlong/orangepi4/ramdisk.fstab:$(TARGET_COPY_OUT_RAMDISK)/fstab.orangepi4

# Recovery
PRODUCT_COPY_FILES += \
	device/xunlong/orangepi4/first_stage.recovery.sh:$(TARGET_COPY_OUT_RECOVERY)/first_stage.sh
