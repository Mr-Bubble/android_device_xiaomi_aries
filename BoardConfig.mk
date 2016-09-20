#
# Copyright (C) 2011 The Android Open-Source Project
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
# inherit from qcom-common
-include device/xiaomi/msm8960-common/BoardConfigCommon.mk

LOCAL_PATH := device/xiaomi/aries

TARGET_BOOTLOADER_NAME       := aries
TARGET_BOARD_INFO_FILE       := $(LOCAL_PATH)/board-info.txt

TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)
TARGET_PREBUILT_KERNEL := device/xiaomi/aries/kernel
#TARGET_KERNEL_ARCH := arm
#TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8960
#TARGET_KERNEL_CONFIG := aries-perf-user_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Audio
BOARD_HAVE_AUDIENCE_ES310               := true

BOARD_HAVE_NEW_QCOM_CSDCLIENT := true
BOARD_HAVE_CSD_FAST_CALL_SWITCH := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE := false

#TWRP
DEVICE_RESOLUTION := 720x1280
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE    := true
BOARD_HAS_LARGE_FILESYSTEM  := true
TARGET_USERIMAGES_USE_EXT4  := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB   := $(LOCAL_PATH)/rootdir/ramdisk/hebing.fstab
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 160
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INCLUDE_L_CRYPTO := true
TW_NO_USB_STORAGE := false
#BOARD_HAS_NO_REAL_SDCARD := true
TW_NEW_ION_HEAP := true
TARGET_NO_INITLOGO := true
TW_INCLUDE_CRYPTO := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TW_COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TW_CUSTOM_THEME := device/xiaomi/aries/res
#Add Chinese Languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

PRODUCT_AAPT_PREF_CONFIG := xhdpi

#TW_THEME := portrait_hdpi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

-include vendor/xiaomi/aries/BoardConfigVendor.mk

