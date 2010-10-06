LOCAL_PATH := $(call my-dir)

# Installs boot logo
file := $(TARGET_ROOT_OUT)/initlogo.rle
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/initlogo.rle | $(ACP)
        $(transform-prebuilt-to-target)

# Kernel installation - disabled for now. Kernel build is outside
# of Android scope
#
# this is here to use the pre-built kernel
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
#endif
#
#file := $(INSTALLED_KERNEL_TARGET)
#ALL_PREBUILT += $(file)
#$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
#	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
