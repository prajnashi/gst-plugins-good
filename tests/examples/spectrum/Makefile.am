if HAVE_GTK
noinst_PROGRAMS = demo-osssrc demo-audiotest spectrum-example
endif

demo_osssrc_SOURCES = demo-osssrc.c
demo_osssrc_CFLAGS  = $(GST_BASE_CFLAGS) $(GST_CFLAGS) $(GTK_CFLAGS)
demo_osssrc_LDFLAGS = $(GST_BASE_LIBS) $(GST_LIBS) $(GTK_LIBS)

demo_audiotest_SOURCES = demo-audiotest.c
demo_audiotest_CFLAGS  = $(GST_BASE_CFLAGS) $(GST_CFLAGS) $(GTK_CFLAGS)
demo_audiotest_LDFLAGS = $(GST_BASE_LIBS) $(GST_LIBS) $(GTK_LIBS)

spectrum_example_SOURCES = spectrum-example.c
spectrum_example_CFLAGS  = $(GST_BASE_CFLAGS) $(GST_CFLAGS) $(GTK_CFLAGS)
spectrum_example_LDFLAGS = $(GST_BASE_LIBS) $(GST_LIBS) $(GTK_LIBS)

