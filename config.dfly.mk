PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

CPPFLAGS = -DVERSION=\"${VERSION}\" -DPATH_APM=\"/dev/apm\"
CFLAGS = -I/usr/local/include
LDFLAGS = -L/usr/local/lib
LDLIBS = -lX11
