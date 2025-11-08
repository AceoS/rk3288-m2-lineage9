# lineage_rk3288_m2.mk
$(call inherit-product, vendor/lineage/config/common_full.mk)   # non-telephony base
$(call inherit-product, device/rockchip/rk3288-m2/device.mk)

PRODUCT_NAME := lineage_rk3288_m2
PRODUCT_DEVICE := rk3288_m2
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := RK3288-M2
PRODUCT_MANUFACTURER := Rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3288_m2-user 9 PPR1.180610.011 eng.aceos.20251108 test-keys" \
    BUILD_FINGERPRINT="rockchip/rk3288_m2/rk3288_m2:9/PPR1.180610.011/aceos20251108:eng/test-keys"
