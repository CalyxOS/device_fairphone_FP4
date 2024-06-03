#
# SPDX-FileCopyrightText: 2022-2024 The Calyx Institute
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

PRODUCT_SYSTEM_NAME := FP4eea

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Fairphone/FP4eea/FP4:13/TKQ1.230127.002/TP2G:user/release-keys
