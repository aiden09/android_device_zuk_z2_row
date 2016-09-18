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

include device/zuk/msm8996-common/BoardConfigCommon.mk

# Kernel
## Configuration
TARGET_KERNEL_CONFIG := cyanogenmod_z2_row_defconfig
## Ramdisk Stuff
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

# inherit from proprietary files
-include vendor/zuk/z2_row/BoardConfigVendor.mk
