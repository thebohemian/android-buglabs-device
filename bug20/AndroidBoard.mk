LOCAL_PATH := $(call my-dir)

# Installs boot logo
file := $(TARGET_ROOT_OUT)/initlogo.rle
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/initlogo.rle | $(ACP)
        $(transform-prebuilt-to-target)

#
# this is here to use the pre-built kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

#
file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

#
# no boot loader, so we don't need any of that stuff..  
#
LOCAL_PATH := device/buglabs/bug20
#
include $(CLEAR_VARS)

#
# include more board specific stuff here? Such as Audio parameters.      
#
