# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/zuk/z2_row/full_z2_row.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8996

PRODUCT_NAME := cm_z2_row
BOARD_VENDOR := zuk
PRODUCT_DEVICE := z2_row

PRODUCT_GMS_CLIENTID_BASE := android-z2_row

PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo Zuk Z2 Pro

PRODUCT_BRAND := Zuk
TARGET_VENDOR := zuk
TARGET_VENDOR_PRODUCT_NAME := Zuk Z2 Pro
TARGET_VENDOR_DEVICE_NAME := z2_pro
