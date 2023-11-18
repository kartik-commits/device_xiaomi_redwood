#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/redwood

# Ignore overriding commands errors
BUILD_BROKEN_DUP_RULES := true

RELAX_USES_LIBRARY_CHECK=true

# Inherit from sm7325-common
include device/xiaomi/sm7325-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := redwood

# Prebuilt Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
BOARD_KERNEL_BINARIES := kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/kernel/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/kernel/dtb.img
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/kernel/dtb.img:$(TARGET_COPY_OUT)/dtb.img \
    $(DEVICE_PATH)/prebuilt/kernel/kernel:kernel \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/prebuilt/kernel/ramdisk-modules/,$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/modules) \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/prebuilt/kernel/vendor-modules/,$(TARGET_COPY_OUT_VENDOR)/lib/modules)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/redwood/BoardConfigVendor.mk
