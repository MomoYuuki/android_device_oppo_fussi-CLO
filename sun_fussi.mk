#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fussi device
$(call inherit-product, device/oppo/fussi/device.mk)

# Inherit some common SunOS stuff.
$(call inherit-product, vendor/sun/config/common_full_phone.mk)

PRODUCT_NAME := sun_fussi
PRODUCT_DEVICE := fussi
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PEEM00

PRODUCT_SYSTEM_NAME := OP4E3F
PRODUCT_SYSTEM_DEVICE := OP4E3F

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=OP4E3F \
    DeviceProduct=PEEM00 \
    SystemDevice=OP4E3F \
    SystemName=PEEM00
