# Copyright (C) 2025 AceoS
# SPDX-License-Identifier: Apache-2.0

TARGET_BOOTLOADER_BOARD_NAME := rk3288_m2
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a15

# Prebuilt kernel (place zImage and dt.img in prebuilt/)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
TARGET_DTB := $(LOCAL_PATH)/prebuilt/dt.img
BOARD_KERNEL_IMAGE_NAME := zImage

# Partitions (from your original firmware; adjust system for Pie if needed)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432      # 32 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824  # 1 GB (increase to 2147483648 for 2 GB if space issues)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 # 2 GB
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456    # 256 MB
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Display
TARGET_SCREEN_DENSITY := 160
TARGET_SCREEN_WIDTH := 1920
TARGET_SCREEN_HEIGHT := 1080

# Vendor
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Misc
BOARD_HAS_NO_SELECT_BUTTON := true

# Prebuilt kernel fixes (no source build)
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true  # Skip recovery build; use TWRP
ALLOW_MISSING_DEPENDENCIES := true

# Soong/Ninja compatibility
TARGET_KERNEL_SOURCE :=
TARGET_KERNEL_CROSS_COMPILE_PREFIX :=
