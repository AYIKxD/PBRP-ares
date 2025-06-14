#
# Copyright (C) 2024 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/xiaomi/ares

PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM) \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# MTK plpath utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery
    
PRODUCT_PACKAGES += shrink bxhsed

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    system_ext \
    product \
    vendor \
    odm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl.recovery

# Additional target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice \
    libteec \
    libteeclientjni \
    libteeclient \
    libteeservice \
    libtee \
    libtee_hal \
    libtee_hal_impl \
    libtee_hal_impl_common \
    libtee_hal_impl_platform \
    libtee_hal_impl_platform_common \
    libtee_hal_impl_platform_mtk \
    libtee_hal_impl_platform_mtk_common \
    libtee_hal_impl_platform_mtk_tee \
    libtee_hal_impl_platform_mtk_tee_common \
    libtee_hal_impl_platform_mtk_tee_tee \
    libtee_hal_impl_platform_mtk_tee_tee_common

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libteec.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libteeclientjni.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libteeclient.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libteeservice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_common.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_common.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk_common.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk_tee.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk_tee_common.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk_tee_tee.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libtee_hal_impl_platform_mtk_tee_tee_common.so

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 34

# API
PRODUCT_SHIPPING_API_LEVEL := 32

# Additional PBRP Packages
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd \
    update_engine \
    update_engine_sideload \
    update_verifier \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery

# Additional Recovery Tools
PRODUCT_PACKAGES += \
    resize2fs_static \
    tune2fs_static \
    e2fsck_static \
    mke2fs_static \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Additional Recovery Features
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@4.0-impl \
    android.hardware.keymaster@4.0-service \
    android.hardware.tee@1.0-impl \
    android.hardware.tee@1.0-service \
    tee-supplicant \
    tee_daemon \
    tee_hal_impl \
    tee_hal_impl_common \
    tee_hal_impl_platform \
    tee_hal_impl_platform_common \
    tee_hal_impl_platform_mtk \
    tee_hal_impl_platform_mtk_common \
    tee_hal_impl_platform_mtk_tee \
    tee_hal_impl_platform_mtk_tee_common \
    tee_hal_impl_platform_mtk_tee_tee \
    tee_hal_impl_platform_mtk_tee_tee_common
