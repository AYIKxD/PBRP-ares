#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from ares device
$(call inherit-product, device/xiaomi/ares/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/xiaomi/ares/recovery/root,recovery/root)

PRODUCT_DEVICE := ares
PRODUCT_NAME := pb_ares
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2104K10I
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# PBRP specific flags
PB_DISABLE_DEFAULT_DM_VERITY := true
PB_DISABLE_DEFAULT_TREBLE_COMP := true 