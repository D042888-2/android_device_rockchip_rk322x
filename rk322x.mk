#
# Copyright 2014 The Android Open-Source Project
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

#
# This file is the build configuration for an aosp Android
# build for rockchip rk3328 hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, aosp and rk3328, hence its name.

include device/rockchip/rk322x/BoardConfig.mk
# Inherit from those products. Most specific first.
$(call inherit-product, device/rockchip/rk322x/product.mk)
$(call inherit-product, device/rockchip/common/device.mk)

PRODUCT_CHARACTERISTICS := box

# Live Wallpapers
PRODUCT_PACKAGES += \
        rild \
        Launcher3

PRODUCT_NAME := rk322x
PRODUCT_DEVICE := rk322x
PRODUCT_BRAND := Android
PRODUCT_MODEL := rk322x
PRODUCT_MANUFACTURER := rockchip


# Get the long list of APNs
#PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
#PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml
