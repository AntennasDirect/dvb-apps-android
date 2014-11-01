LOCAL_PATH := $(call my-dir)

#########################

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  lsdvb.c
LOCAL_MODULE := lsdvb
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := external/dvb-apps/include external/dvb-apps/lib

LOCAL_CFLAGS := -g -Wall -W -Wshadow -Wpointer-arith -Wstrict-prototypes
LOCAL_SYSTEM_SHARED_LIBRARIES := libdvbapi libc

include $(BUILD_EXECUTABLE)

