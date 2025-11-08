$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := lineage_rk3288_m2
PRODUCT_DEVICE := rk3288_m2
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := RK3288 M2
PRODUCT_MANUFACTURER := rockchip

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img
