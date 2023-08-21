#
# Copyright (C) 2022 The Calyx Institute
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from FP4 device
$(call inherit-product, device/fairphone/FP4/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_FP4
PRODUCT_DEVICE := FP4
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP4
PRODUCT_MANUFACTURER := Fairphone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SKQ1.220201.001 SP2J release-keys" \
    TARGET_PRODUCT=FP4eea

BUILD_FINGERPRINT := "Fairphone/FP4eea/FP4:12/SKQ1.220201.001/SP2J:user/release-keys"
