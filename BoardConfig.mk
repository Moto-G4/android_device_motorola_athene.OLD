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

include device/motorola/msm8952-common/BoardConfigCommon.mk

-include vendor/motorola/athene/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/athene

# Asserts
TARGET_OTA_ASSERT_DEVICE := athene,xt1622

# Init
TARGET_INIT_VENDOR_LIB := libinit_athene
TARGET_RECOVERY_DEVICE_MODULES := libinit_athene

# Kernel
TARGET_KERNEL_CONFIG := athene_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216	# 16384 * 1024 mmcblk0p28
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216	# 16384 * 1024 mmcblk0p29
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560	# 2621440 * 1024 mmcblk0p47
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432	# 32768 * 1024 mmcblk0p30
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27258650624 # 26619776 * 1024 mmcblk0p48

#BOARD_MKBOOTIMG_ARGS :=  --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000 --second_offset 0x00f00000 --dt device/motorola/athene/dt.img

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

## TWRP
#RECOVERY_VARIANT := twrp
#
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_QCOM_RTC_FIX := true
#BOARD_SUPPRESS_SECURE_ERASE := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_INCLUDE_CRYPTO := true
#TW_THEME := portrait_hdpi
#
# .repo/local_manifests/twrp_manifest.xml
#<?xml version="1.0" encoding="UTF-8"?>
#<manifest>
#        <project name="omnirom/android_bootable_recovery"          path="bootable/recovery-twrp"          remote="private" revision="android-6.0" />
#        <project name="CyanogenMod/android_external_busybox"       path="external/busybox"                remote="private" revision="cm-13.0" />
#</manifest>
#
# cm.dependencies +=
# {
#    "repository":  "android_external_busybox",
#    "target_path": "external/busybox"
#  }

