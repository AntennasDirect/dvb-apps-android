LOCAL_PATH := $(call my-dir)

#########################

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  dst_test.c
LOCAL_MODULE := dst_test

LOCAL_C_INCLUDES := external/dvb-apps/include external/dvb-apps/lib

LOCAL_CFLAGS := -g -Wall -W -Wshadow -Wpointer-arith -Wstrict-prototypes
LOCAL_SYSTEM_SHARED_LIBRARIES := libdvbapi libucsi libc

include $(BUILD_EXECUTABLE)

