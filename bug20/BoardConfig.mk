# Definitions for the Bug20 board

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# Enable this when there is a custom init.rc
#TARGET_PROVIDES_INIT_RC := true

TARGET_USE_GENERIC_AUDIO := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := omap3

BOARD_HAVE_BLUETOOTH := false

BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

USE_CAMERA_STUB := true

PRODUCT_COPY_FILES += \
	device/buglabs/bug20/vold.conf:system/etc/vold.conf \
	device/buglabs/bug20/vold.fstab:system/etc/vold.fstab \
	device/buglabs/bug20/asound.conf:system/etc/asound.conf

include frameworks/base/data/sounds/AudioPackage2.mk
