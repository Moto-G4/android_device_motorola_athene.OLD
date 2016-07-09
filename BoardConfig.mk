#
# Copyright (C) 2015 The CyanogenMod Project
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

include device/motorola/msm8952-common/BoardConfigCommon.mk

-include vendor/motorola/athene/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/athene

# Asserts
TARGET_OTA_ASSERT_DEVICE := athene
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Init
TARGET_INIT_VENDOR_LIB := libinit_athene
TARGET_RECOVERY_DEVICE_MODULES := libinit_athene

# Kernel
TARGET_KERNEL_CONFIG := athene_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864        # 16384 * 4096 mmcblk0p28
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864    # 16484 * 4096 mmcblk0p29
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 10737418240   # 2621440 * 4096 mmcblk0p47
BOARD_PERSISTIMAGE_PARTITION_SIZE := 134217728    # 32768 * 4096 mmcblk0p30
BOARD_USERDATAIMAGE_PARTITION_SIZE := 46497529856 # 11351936 * 4096 mmcblk0p48

# Power
#TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# TWRP
RECOVERY_VARIANT := twrp

RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
