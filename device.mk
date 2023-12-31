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
PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    ro.opengles.version=196609

PRODUCT_PACKAGES += \
    Launcher3


#enable this for support f2fs with data partion
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
# This ensures the needed build tools are available.
# TODO: make non-linux builds happy with external/f2fs-tool; system/extras/f2fs_utils
#ifeq ($(HOST_OS),linux)
#TARGET_USERIMAGES_USE_F2FS := true
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.${TARGET_BOARD_PLATFORM_PRODUCT}.rc:root/init.${TARGET_BOARD_PLATFORM_PRODUCT}.rc \
    $(LOCAL_PATH)/fstab.rk30board.bootmode.unknown:root/fstab.rk30board.bootmode.unknown \
    $(LOCAL_PATH)/fstab.rk30board.bootmode.emmc:root/fstab.rk30board.bootmode.emmc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fix_performance.sh:system/bin/fix_performance.sh

PRODUCT_COPY_FILES += \
	device/rockchip/rk322x/110b0030_pwm.kl:system/usr/keylayout/110b0030_pwm.kl \
	device/rockchip/rk322x/20050030_pwm.kl:system/usr/keylayout/20050030_pwm.kl \
	device/rockchip/rk322x/ff680030_pwm.kl:system/usr/keylayout/ff680030_pwm.kl \
	$(LOCAL_PATH)/audio_policy_rk322x.conf:system/etc/audio_policy.conf

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)


$(call inherit-product-if-exists, vendor/rockchip/rk322x/device-vendor.mk)

