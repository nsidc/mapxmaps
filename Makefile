TOPDIR=$(HOME)
INSTALLDIR=$(TOPDIR)/nsidc_maps

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -f *.gpd *.mpp $(DESTDIR)$(INSTALLDIR)
