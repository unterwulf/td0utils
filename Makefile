PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
DATADIR ?= $(PREFIX)/share
PICKLEDIR = $(DATADIR)/poke/pickles
DESTDIR ?= /

.PHONY: all
all:
	@echo 'There is nothing to build, just use make install.'

.PHONY: install
install:
	install -Dm 755 check_td0 $(DESTDIR)$(BINDIR)/check_td0
	install -Dm 755 dump_td0 $(DESTDIR)$(BINDIR)/dump_td0
	install -Dm 755 td02ima $(DESTDIR)$(BINDIR)/td02ima
	install -Dm 644 teledisk.pk $(DESTDIR)$(PICKLEDIR)/teledisk.pk
