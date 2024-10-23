#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from cmi device
$(call inherit-product, device/xiaomi/cmi/device.mk)

PRODUCT_NAME := aosp_cmi
PRODUCT_DEVICE := cmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cmi-user 13 RKQ1.211001.001 V816.0.2.0.TJAMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/cmi_global/cmi:13/RKQ1.211001.001/V816.0.2.0.TJAMIXM:user/release-keys
