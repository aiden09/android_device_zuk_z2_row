#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from msm8996-common
$(call inherit-product, device/zuk/msm8996-common/msm8996.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES := \
	device/zuk/z2_row/audio/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD_Bluetooth_cal.acdb \
	device/zuk/z2_row/audio/QRD_General_cal.acdb:system/etc/acdbdata/QRD_General_cal.acdb \
	device/zuk/z2_row/audio/QRD_Global_cal.acdb:system/etc/acdbdata/QRD_Global_cal.acdb \
	device/zuk/z2_row/audio/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD_Handset_cal.acdb \
	device/zuk/z2_row/audio/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD_Hdmi_cal.acdb \
	device/zuk/z2_row/audio/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD_Headset_cal.acdb \
	device/zuk/z2_row/audio/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD_Speaker_cal.acdb

# Keylayout
PRODUCT_COPY_FILES := \
	device/zuk/z2_row/keylayout/fpc1020.kl:system/usr/keylayout/acdbdata/fpc1020.kl \
	device/zuk/z2_row/keylayout/gpio-keys.kl:system/usr/keylayout/acdbdata/gpio-keys.kl \
	device/zuk/z2_row/keylayout/qpnp_pon.kl:system/usr/keylayout/acdbdata/qpnp_pon.kl \
	device/zuk/z2_row/keylayout/synaptics.kl:system/usr/keylayout/acdbdata/synaptics.kl

# GPS
PRODUCT_COPY_FILES := \
	device/zuk/z2_row/gps/flp.conf:system/etc/flp.conf \
	device/zuk/z2_row/gps/gps.conf:system/etc/gps.conf \
	device/zuk/z2_row/gps/izat.conf:system/etc/izat.conf \
	device/zuk/z2_row/gps/sap.conf:system/etc/sap.conf

# Sensors
PRODUCT_PACKAGES += \
	sensors.msm8996

# RIL
PRODUCT_PACKAGES += \
	librmnetctl \
	libxml2 \
	libprotobuf-cpp-full

# Power
PRODUCT_PACKAGES += \
	power.msm8996

# NFC
PRODUCT_PACKAGES += \
	com.android.nfc_extras \
	com.nxp.nfc.nq \
	nfc_nci.nqx.default \
	NQNfcNci \
	nqnfcee_access.xml \
	Tag

$(call inherit-product-if-exists, vendor/zuk/z2_row/z2_row-vendor.mk)
