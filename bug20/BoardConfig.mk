# Definitions for the Bug20 board

TARGET_NO_BOOTLOADER := true
TARGET_USE_GENERIC_AUDIO := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

BOARD_HAVE_BLUETOOTH := false

BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

USE_CAMERA_STUB := true

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.conf:system/etc/vold.conf \
	$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/asound.conf:system/etc/asound.conf

include frameworks/base/data/sounds/AudioPackage2.mk
