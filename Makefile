.POSIX:

VERSION = 1.1

include config.os.mk
include config.mk

OBJ = strtonum.o xbattmon.o
BIN = xbattmon

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $(OBJ) $(_LDLIBS)

.c.o:
	$(CC) $(_CFLAGS) $(_CPPFLAGS) -c $<

xbattmon.o: arg.h config.h

config.h:
	cp config.def.h $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(BIN) $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f $(BIN).1 $(DESTDIR)$(MANPREFIX)/man1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(BIN)
	rm -f $(DESTDIR)$(MANPREFIX)/man1/$(BIN).1

clean:
	rm -f $(BIN) $(OBJ)
