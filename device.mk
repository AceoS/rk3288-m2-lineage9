# device.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/rockchip/rk3288-m2/BoardConfig.mk)

PRODUCT_PACKAGES += \
    Launcher3 \
    Settings \
    SystemUI \
    ExactCalculator \
    LatinIME

# No RIL / telephony
PRODUCT_PACKAGES += \
    audio.primary.rk3288 \
    audio.usb.default \
    audio_policy_configuration.xml

PRODUCT_PACKAGES += \
    camera.rk3288 \
    libcamera_client

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img
