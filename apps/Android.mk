LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Signal
LOCAL_SRC_FILES := Signal.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orbot
LOCAL_SRC_FILES := Orbot.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orfox
LOCAL_SRC_FILES := Orfox.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)
