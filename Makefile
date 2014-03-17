TOPDIR=$(HOME)
INSTALLDIR=$(TOPDIR)/nsidc_maps

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -f *.gpd *.mpp $(DESTDIR)$(INSTALLDIR)
	mkdir -p $(DESTDIR)$(INSTALLDIR)/unsupported
	cp -f unsupported/*.gpd unsupported/*.mpp $(DESTDIR)$(INSTALLDIR)/unsupported
