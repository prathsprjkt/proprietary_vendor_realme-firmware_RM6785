LOCAL_PATH := $(call my-dir)

ifneq ($(filter RMX2001 RMX2151,$(TARGET_DEVICE)),)
$(foreach f, $(notdir $(wildcard $(LOCAL_PATH)/$(TARGET_DEVICE)/*)), \
    $(call add-radio-file,$(TARGET_DEVICE)/$(f)))

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
