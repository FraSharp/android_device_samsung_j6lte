#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from j6lte device
$(call inherit-product, device/samsung/j6lte/device.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/rr/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j6lte
PRODUCT_NAME := rr_j6lte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

TARGET_VENDOR := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

