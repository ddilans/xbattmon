# Xinerama, comment if you don't want it
XINERAMAFLAGS = -DXINERAMA
XINERAMALIBS  = -lXinerama

_CPPFLAGS = $(XINERAMAFLAGS) $(CPPFLAGS)
_CFLAGS = -Os $(CFLAGS)
_LDLIBS = $(XINERAMALIBS) $(LDLIBS)