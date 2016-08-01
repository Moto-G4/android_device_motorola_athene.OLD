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
#

# Inherit from athene device
#$(call inherit-product, device/motorola/athene/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := full_athene

# Charger
PRODUCT_PACKAGES += charger charger_res_images

###########################################################
### DEFAULT PROPS
###########################################################

PRODUCT_COPY_FILES += \
    device/motorola/athene/dt.img:dt.img \
	device/motorola/athene/twrp.fstab:root/etc/twrp.fstab

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.debug_level=0x4948 \
    ro.secure=0	\
    ro.adb.secure=0	\
    persist.sys.root_access=3	\
    ro.allow.mock.location=0	\
    ro.debuggable=1

#$(call inherit-product-if-exists, vendor/motorola/athene/athene-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := omni_athene
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G4 Plus
PRODUCT_MANUFACTURER := motorola
