#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from honda device
$(call inherit-product, device/oplus/honda/device.mk)

PRODUCT_DEVICE := honda
PRODUCT_NAME := twrp_honda
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := OnePlus Nord CE5 5G
PRODUCT_MANUFACTURER := oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hal_mgvi_64_64only_armv82-user 14 UKQ1.231108.001 1769416879047 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:14/UKQ1.231108.001/1769416879047:user/release-keys
