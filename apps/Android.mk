LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Signal
LOCAL_SRC_FILES := Signal/Signal.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orbot
LOCAL_SRC_FILES := Orbot/Orbot.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orfox
LOCAL_SRC_FILES := Orfox/Orfox.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := 32
LOCAL_MODULE_TARGET_ARCH := arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orfox-libs
LOCAL_MODULE_CLASS := FAKE
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(PRODUCT_OUT)/system/app/Orfox
	$(hide) $(ACP) -r calyx/apps/Orfox/lib $(PRODUCT_OUT)/system/app/Orfox/
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := Bitmask
LOCAL_SRC_FILES := Bitmask/Bitmask.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm arm64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Bitmask-libs
LOCAL_MODULE_CLASS := FAKE
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(PRODUCT_OUT)/system/app/Bitmask
	$(hide) $(ACP) -r calyx/apps/Bitmask/lib $(PRODUCT_OUT)/system/app/Bitmask/
	$(hide) touch $@
