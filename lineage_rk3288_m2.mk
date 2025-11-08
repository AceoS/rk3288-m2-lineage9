$(call inherit-product, device/rockchip/rk3288_m2/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := lineage_rk3288_m2
PRODUCT_DEVICE := rk3288_m2
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := RK3288 M2 Custom
PRODUCT_MANUFACTURER := Rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3288-user 4.4.4 KTU84P eng.root.20181226.170730 release-keys"

BUILD_FINGERPRINT := rockchip/rk3288/rk3288:4.4.4/KTU84P/eng.root.20181226.170730:user/release-keys
