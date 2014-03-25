LOCAL_PATH := $(call my-dir)

#########################

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  atsc_epg.c
LOCAL_MODULE := atsc_epg

LOCAL_C_INCLUDES := external/dvb-apps/include external/dvb-apps/lib

LOCAL_CFLAGS := -g -Wall -W -Wshadow -Wpointer-arith -Wstrict-prototypes -std=c99 -D_POSIX_SOURCE
LOCAL_SYSTEM_SHARED_LIBRARIES := libdvbapi libucsi libc

include $(BUILD_EXECUTABLE)

