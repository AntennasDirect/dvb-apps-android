LOCAL_PATH := $(call my-dir)

#########################

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
	atsc_psip_section.c \
	diseqc.c            \
	dump-vdr.c          \
	dump-zap.c          \
	lnb.c               \
	scan.c              \
	section.c           \
	glob.c

LOCAL_MODULE := scan

LOCAL_C_INCLUDES := external/dvb-apps/include external/dvb-apps/lib external/libiconv/libiconv-1.14/include

LOCAL_CFLAGS := -g -Wall -W -Wshadow -Wpointer-arith -Wstrict-prototypes -Wno-packed-bitfield-compat -D__KERNEL_STRICT_NAMES -DANDROID
LOCAL_SYSTEM_SHARED_LIBRARIES := libdvbapi libdvbcfg libdvben50221 libdvbsec libucsi libc libiconv

include $(BUILD_EXECUTABLE)

