LOCAL_PATH := $(call my-dir)

GST_PLUGINS_GOOD_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

include $(GST_PLUGINS_GOOD_TOP)/gst/id3demux/Android.mk
include $(GST_PLUGINS_GOOD_TOP)/gst/qtdemux/Android.mk
include $(GST_PLUGINS_GOOD_TOP)/gst/wavparse/Android.mk
include $(GST_PLUGINS_GOOD_TOP)/gst/videofilter/Android.mk
