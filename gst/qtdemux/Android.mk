LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    quicktime.c \
    qtdemux.c \
    qtdemux_types.c \
    qtdemux_dump.c
         
        	
LOCAL_SHARED_LIBRARIES := \
    libgsttag-0.10          \
    libgstreamer-0.10       \
    libgstbase-0.10         \
    libglib-2.0             \
    libgthread-2.0          \
    libgmodule-2.0          \
    libgobject-2.0



LOCAL_TOP_PATH := $(LOCAL_PATH)/./../../..

LOCAL_MODULE:= libgstqtdemux


LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)                       \
    $(LOCAL_PATH)/./../../              \
    $(LOCAL_TOP_PATH)/gst-plugins-base/gst-libs \
    $(LOCAL_TOP_PATH)/gstreamer         \
    $(LOCAL_TOP_PATH)/gstreamer/android \
    $(LOCAL_TOP_PATH)/gstreamer/libs    \
    $(LOCAL_TOP_PATH)/gstreamer/gst	    \
    $(LOCAL_TOP_PATH)/gstreamer/gst/android	    \
    $(LOCAL_TOP_PATH)/glib              \
    $(LOCAL_TOP_PATH)/glib/android      \
    $(LOCAL_TOP_PATH)/glib/glib         \
    $(LOCAL_TOP_PATH)/glib/gmodule      \
    $(LOCAL_TOP_PATH)/glib/gobject      \
    $(LOCAL_TOP_PATH)/glib/gthread

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H			

include $(BUILD_SHARED_LIBRARY)
