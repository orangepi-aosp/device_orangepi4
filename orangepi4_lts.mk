# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
$(call inherit-product, device/xunlong/orangepi4/device.mk)

PRODUCT_NAME := orangepi4_lts
PRODUCT_DEVICE := orangepi4_lts
PRODUCT_BRAND := orangepi
PRODUCT_MODEL := Orange PI 4 LTS
PRODUCT_MANUFACTURER := Xunlong

PRODUCT_PLATFORM := rk3399
PRODUCT_HARDWARE := orangepi4_lts

PRODUCT_BUILD_INIT_BOOT_IMAGE := true
PRODUCT_BUILD_SYSTEM_IMAGE := true
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := true
# PRODUCT_BUILD_CACHE_IMAGE := true
PRODUCT_BUILD_RECOVERY_IMAGE := true
# PRODUCT_BUILD_VBMETA_IMAGE := true
# PRODUCT_BUILD_ODM_IMAGE := true
# PRODUCT_BUILD_ODM_DLKM_IMAGE := true
PRODUCT_BUILD_VENDOR_IMAGE := true
PRODUCT_BUILD_VENDOR_DLKM_IMAGE := true
# PRODUCT_BUILD_PRODUCT_IMAGE  := true
# PRODUCT_BUILD_RAMDISK_IMAGE := true
PRODUCT_BUILD_USERDATA_IMAGE := true

# Super partition
PRODUCT_BUILD_SUPER_PARTITION := true
