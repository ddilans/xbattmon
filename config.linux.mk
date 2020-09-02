PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

CPPFLAGS = \
	-D_POSIX_C_SOURCE=200809L \
	-DVERSION=\"${VERSION}\" \
	-DPATH_FMT_BAT_FULL=\"/sys/class/power_supply/BAT%d/energy_full\" \
	-DPATH_FMT_BAT_NOW=\"/sys/class/power_supply/BAT%d/energy_now\" \
	-DPATH_AC_ONLINE=\"/sys/class/power_supply/AC0/online\"
LDLIBS = -lX11
