#
# Copyright (C) 2022 The Calyx Institute
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit from FP4 device
$(call inherit-product, device/fairphone/FP4/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_FP4
PRODUCT_DEVICE := FP4
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP4
PRODUCT_MANUFACTURER := Fairphone

BUILD_FINGERPRINT := "Fairphone/FP4eea/FP4:11/RKQ1.210503.001/FP3R:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=FP4eea \
    PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.210503.001 FP3R release-keys"
