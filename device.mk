# Copyright (C) 2025 AceoS
# SPDX-License-Identifier: Apache-2.0

# Inherit AOSP base + BoardConfig
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/rockchip/rk3288_m2/BoardConfig.mk)

# Device identifier (shared with lineage.mk)
PRODUCT_DEVICE := rk3288_m2
PRODUCT_BRAND := rockchip
PRODUCT_MANUFACTURER := Rockchip

# Overlays (empty dir for now; add if needed for themes)
DEVICE_PACKAGE_OVERLAYS += device/rockchip/rk3288_m2/overlay

# Screen
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Basic packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Settings \
    SystemUI \
    ExactCalculator \
    LatinIME

# RIL (for telephony; remove if no modem)
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio.config@1.0

# Audio (Rockchip defaults)
PRODUCT_PACKAGES += \
    audio.primary.rk3288 \
    audio.usb.default \
    audio_policy_configuration.xml

# Camera (basic HAL)
PRODUCT_PACKAGES += \
    camera.rk3288 \
    libcamera_client

# GPS/WiFi (add if supported)
PRODUCT_PACKAGES += \
    gps.rk3288 \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# DTB copy to boot.img
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img
