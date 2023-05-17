#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOSS Flags

# Gapps
WITH_GMS := true 
TARGET_CORE_GMS := true

# extra flag under TARGET_CORE_GMS
TARGET_CORE_GMS_EXTRAS := true 

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Flag for GrapheneOS Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap Funtionality
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

# Enable Blur
TARGET_ENABLE_BLUR := true

# Aperture Camera (default: not defined - skipped by the compiler)
TARGET_BUILD_APERTURE_CAMERA := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_lavender
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender
