LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= 	\
	quicktime.c 	\
	qtdemux.c 	\
	qtdemux_types.c \
	qtdemux_dump.c

LOCAL_SHARED_LIBRARIES :=	\
	libgsttag-0.10		\
	libgstreamer-0.10	\
	libgstbase-0.10		\
	libglib-2.0		\
	libgthread-2.0		\
	libgmodule-2.0		\
	libgobject-2.0

LOCAL_MODULE:= libgstqtdemux

LOCAL_C_INCLUDES := 				\
	$(LOCAL_PATH)				\
	$(GST_PLUGINS_GOOD_TOP)			\
	external/gst-plugins-base/gst-libs 	\
	external/gstreamer		 	\
	external/gstreamer/android 		\
	external/gstreamer/libs			\
	external/gstreamer/gst			\
	external/gstreamer/gst/android		\
	external/glib			  	\
	external/glib/android	  		\
	external/glib/glib		 	\
	external/glib/gmodule	  		\
	external/glib/gobject	  		\
	external/glib/gthread

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H			

include $(BUILD_PLUGIN_LIBRARY)
