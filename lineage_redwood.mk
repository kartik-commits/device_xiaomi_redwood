#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := POCO
PRODUCT_MODEL := redwood
PRODUCT_NAME := lineage_redwood

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="redwood_global-user 14 UKQ1.240624.001 OS2.0.3.0.UMSMIXM release-keys" \
    BuildFingerprint=POCO/redwood_global/redwood:14/UKQ1.240624.001/OS2.0.3.0.UMSMIXM:user/release-keys
