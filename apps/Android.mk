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
LOCAL_REQUIRED_MODULES := Orbot-libs
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Orbot-libs
LOCAL_MODULE_CLASS := FAKE
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(PRODUCT_OUT)/system/app/Orbot/lib/arm
	$(hide) $(ACP) calyx/apps/Orbot/lib/armeabi/*.so $(PRODUCT_OUT)/system/app/Orbot/lib/arm/
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := Orfox
LOCAL_SRC_FILES := Orfox/Orfox.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := 32
LOCAL_MODULE_TARGET_ARCH := arm
LOCAL_REQUIRED_MODULES := Orfox-libs
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
LOCAL_REQUIRED_MODULES := Bitmask-libs
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

include $(CLEAR_VARS)
LOCAL_MODULE := Conversations
LOCAL_SRC_FILES := Conversations/Conversations.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := k9mail
LOCAL_SRC_FILES := k9mail/k9mail.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := OpenKeychain
LOCAL_SRC_FILES := OpenKeychain/OpenKeychain.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ooniprobe
LOCAL_SRC_FILES := ooniprobe/ooniprobe.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm
LOCAL_REQUIRED_MODULES := ooniprobe-libs
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ooniprobe-libs
LOCAL_MODULE_CLASS := FAKE
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(PRODUCT_OUT)/system/app/ooniprobe
	$(hide) $(ACP) -r calyx/apps/ooniprobe/lib $(PRODUCT_OUT)/system/app/ooniprobe/
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := Briar
LOCAL_SRC_FILES := Briar/Briar.apk
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)
LOCAL_MODULE_CLASS := APPS
include $(BUILD_PREBUILT)

