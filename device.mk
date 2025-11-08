$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += \
    device/rockchip/rk3288_m2/prebuilt/firmware/brcmfmac43362-sdio.bin:system/etc/firmware/brcmfmac43362-sdio.bin \
    device/rockchip/rk3288_m2/prebuilt/firmware/brcmfmac43362-sdio.txt:system/etc/firmware/brcmfmac43362-sdio.txt \
    device/rockchip/rk3288_m2/prebuilt/lib/libMali.so:system/lib/libMali.so \
    device/rockchip/rk3288_m2/prebuilt/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so

PRODUCT_PACKAGES += \
    brcmfmac.ko

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml
