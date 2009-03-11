LOCAL_PATH := $(call my-dir)

GSTREAMER_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

include $(GSTREAMER_TOP)/gst/qtdemux/Android.mk
include $(GSTREAMER_TOP)/gst/wavparse/Android.mk
include $(GSTREAMER_TOP)/gst/videofilter/Android.mk
