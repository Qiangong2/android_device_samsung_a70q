#
# Copyright (C) 2019 The LineageOS Project and Qiangong2
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# common lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A70
PRODUCT_MANUFACTURER := Samsung

BUILD_FINGERPRINT := samsung/a70qdx/a70q:9/PPR1.180610.011/A705FXXU3ASG3:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="a70q" \
    TARGET_DEVICE="a70q"
