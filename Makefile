TOPDIR=$(HOME)
INSTALLDIR=$(TOPDIR)/nsidc_maps

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -f -r *.gpd *.mpp unsupported $(DESTDIR)$(INSTALLDIR)
