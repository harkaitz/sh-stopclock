.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
.SUFFIXES:
.PHONY: all clean install check

PROJECT   =stopclock
VERSION   =1.0.0
PREFIX    =/usr/local

all:
clean:
install:
check:
## -- BLOCK:license --
install: install-license
install-license: README.md COPYING
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md COPYING $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/date-diff $(DESTDIR)$(PREFIX)/bin
	cp bin/stopclock $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
## -- BLOCK:agents --
install: install-ai
install-ai:
	install -d $(DESTDIR)$(PREFIX)/share/mcpshell
	install -m644 pkg/mcpshell/* $(DESTDIR)$(PREFIX)/share/mcpshell
## -- BLOCK:agents --
