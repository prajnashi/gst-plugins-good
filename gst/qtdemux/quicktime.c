/* GStreamer
 * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
 * Copyright (C) <2003> David A. Schleef <ds@schleef.org>
 * Copyright (C) <2006> Wim Taymans <wim@fluendo.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#ifdef BUILD_WITH_ANDROID
/* Android doesn't support il8n, remove it */
#define  _(x) (x)
#include "gst/gst-i18n-plugin.h"
#endif /* BUILD_WITH_ANDROID */

#include "qtdemux.h"
#ifndef BUILD_WITH_ANDROID
/* TODO:
 * gstrtpqtdepay is removed in Android platform to save porting
 * effort. It shall be supported in future version */
#include "gstrtpxqtdepay.h"
#endif /* BUILD_WITH_ANDROID */

static gboolean
plugin_init (GstPlugin * plugin)
{
#ifdef ENABLE_NLS
  setlocale (LC_ALL, "");
  bindtextdomain (GETTEXT_PACKAGE, LOCALEDIR);
#endif /* ENABLE_NLS */

  /* ensure private tag is registered */
  gst_tag_register (GST_QT_DEMUX_PRIVATE_TAG, GST_TAG_FLAG_META,
      GST_TYPE_BUFFER, "QT atom", "unparsed QT tag atom",
      gst_tag_merge_use_first);

  if (!gst_element_register (plugin, "qtdemux",
          GST_RANK_PRIMARY, GST_TYPE_QTDEMUX))
    return FALSE;

#ifndef BUILD_WITH_ANDROID
  /* TODO:
   * gstrtpqtdepay is removed in Android platform to save porting
   * effort. It shall be supported in future version */
  if (!gst_element_register (plugin, "rtpxqtdepay",
          GST_RANK_MARGINAL, GST_TYPE_RTP_XQT_DEPAY))
    return FALSE;
#endif /* BUILD_WITH_ANDROID */

  return TRUE;
}

GST_PLUGIN_DEFINE (GST_VERSION_MAJOR,
    GST_VERSION_MINOR,
    "quicktime",
    "Quicktime support",
    plugin_init, VERSION, "LGPL", GST_PACKAGE_NAME, GST_PACKAGE_ORIGIN);
