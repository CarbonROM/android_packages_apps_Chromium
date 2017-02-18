ifneq ($(TARGET_USES_AOSP_BROWSER),true)
LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_ARCH),arm64)
include $(CLEAR_VARS)
LOCAL_MODULE       := Chromium
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES    := arm64/ChromePublic.apk
LOCAL_CERTIFICATE  := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
include $(BUILD_PREBUILT)
else
include $(CLEAR_VARS)
LOCAL_MODULE       := Chromium
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES    := arm/ChromePublic.apk
LOCAL_CERTIFICATE  := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
include $(BUILD_PREBUILT)
endif
endif
