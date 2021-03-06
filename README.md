# NSIDC Map and Grid Definition Files

This directory contains a collection of Map Projection Parameters (.mpp)
and Grid Parameter Definition (.gpd) files that are used with mapping and
gridding software (the mapx library and its application programs) at
NSIDC.

See [Points, Pixels, Grids, and Cells - A Mapping and Gridding Primer](https://nsidc.org/support/how/Points-Pixels-Grids-and-Cells-A-Mapping-and-Gridding-Primer)
for background on the software.

See [mapx](https://github.com/nsidc/mapx) for the latest news and software distribution.

These files can be installed anywhere on your local system.

The mapx library and its application programs use the environment variable
`PATHMPP` to search for .mpp/.gpd files.  `PATHMPP` can contain a list of
directories that will be searched in order.  For example, if you have
placed these files in a subdirectory called 'nsidc_maps' located within
your home directory, and you have your own local .mpp files in /my/other/path/,
then, in C shell, you should specify

`setenv PATHMPP ~/nsidc_maps:/my/other/path`

(N.B. For long-time users of the mapx library: `PATHGPD` is obsolete, all
routines now search `PATHMPP` only.)

There are two types of mpp/gpd files.  Files in the top nsidc_maps
directory are supported files.  Supported files describe data sets that
NSIDC distributes, and enjoy a higher level of support than the others.
Unsupported files (in the subdirectory called "unsupported") are used for
miscellaneous (possibly research only) data sets, and may be promoted to
the supported level in the event that they are used for a distributed data
set.  Unsupported files also include files that we have written for data
we may have used at one time or another, for example, the ncep.gpd files,
and think that they might be useful to someone else who wants to use the
mapx library and applications to do something similar.

If you wish to use the unsupported .mpp/.gpd files, remember to add the
nsidc_maps/unsupported subdirectory to the list of directories in your
`PATHMPP`.

This collection of mpp/gpd files has accumulated over a number of years
and various projects at NSIDC, and unfortunately suffers from a lack of
naming convention.

## Supported EASE-Grid mpp/gpd files:

```
EASE2_Xyykm.gpd - Families of EASE-Grid-2.0 definitions, which use the
                  WGS84 ellipsoid instead of the spherical Earth model
                  used in the original EASE-Grids.  These grid definitions
                  make file distribution to/from geotiff format and GIS
                  tools much easier than the original definitions.  For
                  these grids:
                  X : N = Northern Lambert Azimuthal Equal-Area
                      S = Southern Lambert Azimuthal Equal-Area
                      M = Cylindrical Equal-Area
                  and
                  yy : grid resolution, in km (can include optional
                       decimal point, e.g. '12.5'
                  The 25/12.5/6.25 km grids are nested (exactly 4 of each
                  12.5-kilometer cells in each 25-kilometer cell, etc)

                  The SMAP (Soil Moisture Active-Passive) grids (36/9/3/1
                  km) are nested (exact multiples of each successively
                  finer resolution grid cells in each coarser resolution
                  grid).

Grn250m.gpd     - DataRods 250 m Greenland subset of 25 km Northern Hemisphere EASE-Grid

M200correct.mpp - 200 km scale Global Cylindrical EASE-Grid mpp.  All
                  supported EASE-Grid global gpds must refer to this mpp

Ml.gpd                - 25 km Global Cylindrical EASE-Grid

Mh.gpd                - 12.5 km Global Cylindrical EASE-Grid

modis_500m/     - subdirectory with complete set of .gpd files for MODIS 500 m tiles,
                  also includes a single .gpd for the complete sinusoidal projection

N200correct.mpp - 200 km scale Northern Hemisphere EASE-Grid mpp.  All
                  supported EASE-Grid Northern Hemisphere gpds must refer
                  to this mpp

N2conus.gpd     - 2.5 km CONUS Northern Hemisphere subset EASE-Grid

Na1.gpd,
Na5.gpd &
Na25.gpd        - 1.25, 5 and 25 km AVHRR Polar Pathfinder Northern Hemisphere
                  subset EASE-Grid

Naari.gpd       - 12.5 km AARI sea ice grids Northern Hemisphere subset EASE-Grid

Nl.gpd                - 25 km Northern Hemisphere EASE-Grid

Nh.gpd                - 12.5 km Northern Hemisphere EASE-Grid

NModis4km.gpd   - 4 km Northern Hemisphere EASE-Grid for MODIS sea ice
NModis1km.gpd   - 1 km Northern Hemisphere EASE-Grid for MODIS sea ice

NpathP.gpd &
NpathP.mpp      - 100 km scale TOVS Polar Pathfinder Northern Hemisphere
                  subset EASE-Grid; the only exception to the rule that all
                  supported Northern Hemisphere. EASE-Grids refer to
                  N200correct.mpp.

Nrims50.gpd,
Nrims75.gpd &
Nrims100.gpd    - 50, 75 and 100 km Arctic RIMS Northern Hemisphere subset
                  EASE-Grids.  This family of grids places the Pole down and to the
                  right of the center of the grid, in order to match the bore-centered
                  convention of the original EASE-Grids, uses the rotation of the
                  original EASE-Grids (Greenwich Meridian oriented "down" from the Pole)

Nrims25km.gpd,
Nrims50km.gpd,
Nrims100km.gpd,
Nrims125km.gpd,
Nrims500km.gpd  - Arctic RIMS No. Hem. EASE-Grids.  This family of
                  grids places the Pole at the intersection of the center 4 grid cells,
                  and rotates the projection (Greenwich Meridian oriented "right" from
                  the Pole).  The 25, 50 and 100 km grids are nested.

S200correct.mpp - 200 km scale Southern Hemisphere EASE-Grid mpp.  All
                  supported EASE-Grid Southern Hemisphere gpds must refer to this mpp

Sa1.gpd,
Sa5.gpd &
Sa25.gpd        - 1.25, 5 and 25 km AVHRR Polar Pathfinder Southern Hemisphere subset
                  EASE-Grid

Sl.gpd          - 25 km Southern Hemisphere EASE-Grid

Sh.gpd          - 12.5 km Southern Hemisphere EASE-Grid

SModis4km.gpd   - 4 km Southern Hemisphere EASE-Grid for MODIS sea ice
SModis1km.gpd   - 1 km Southern Hemisphere EASE-Grid for MODIS sea ice

SpathP.gpd &
SpathP.mpp      - 100 km scale TOVS Polar Pathfinder Southern Hemisphere
                  subset EASE-Grid; the only exception to the rule that all
                  supported Southern Hemisphere. EASE-Grids refer to
                  S200correct.mpp.
```

### Supported non-EASE-Grid mpp/gpd files:
```
BamberDEM1km.gpd  - nsidc-0422 Antarctic 1 km Digital Elevation Model (DEM)
                    from Combined ERS-1 Radar and ICESat Laser Satellite Altimetry

GlasAntDemWgs500.gpd,
GlasGrnDemWgs1km.gpd
                  - Glas Greenland and Antarctic Digital Elevation Model
                    (DEM) grids

Ims24km.gpd,
Ims4km.gpd        - NOAA Interactive Multisensor Snow & Ice Mapping System
                    (IMS) 24 km and 4 km grids

Nps.mpp           - Northern Hemisphere Polar Stereographic (TB and sea ice)

Nps6.gpd,
N3A.gpd &
N3B.gpd           - 6.25, 12.5 and 25 km Northern Hemisphere Polar
                    Stereographic grids.

Sps.mpp           - Southern Hemisphere Polar Stereographic (TB and sea ice)

Sps6.gpd,
S3A.gpd &
S3B.gpd           - 6.25, 12.5 and 25 km Southern Hemisphere Polar Stereographic grids.

NpsGrn.gpd        - 25 km Greenland subset of Nps.mpp

llo.gpd           - lat/lon one degree grids for ISLSCP snow and sea ice.
llh.gpd           - lat/lon half degree grids for ISLSCP snow and sea ice.
llq.gpd           - lat/lon quarter degree grids for ISLSCP snow and sea ice.

Na12500-CF.gpd    - Chuck Fowler's version of 12.5 km  AVHRR Polar
                    Pathfinder Northern Hemisphere subset EASE-Grid (ice age
                    data set)
```

#### Cold Land Processes Experiment (CLPX) Large Regional Study Area (LRSA) grids:

```
lrsa_geo000.5.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    0.5 arcsecond = 0.000138889 degree grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_geo001.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    1.0 arcsecond = 0.000277778 degree grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_geo007.5.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    7.5 arcsecond = 0.00208333 degree grid
                    CLPX MOD02QKM, MOD09Q1, MOD13Q1

lrsa_geo015.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    15.0 arcsecond = 0.00416667 degree grid
                    CLPX MOD02HKM, MOD09A1, MOD10_L2, MOD10A1, MOD10A2

lrsa_geo030.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    30.0 arcsecond = 0.00833333 degree grid
                    CLPX MOD021KM, MOD03, MOD11A1, MOD35_L2

lrsa_geo180.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    180 arcsecond = 0.05-degree grid
                    CLPX MOD10C1, MOD10C2

lrsa_geo360.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                    360 arcsecond = 0.1-degree grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_geo720.0.gpd - CLPX LRSA Universal Transverse Mercator
                    720 arcsecond = 0.2-degree grid
                    CLPX SSM/I TBs, AMSR-E TBs

lrsa_utm00012.gpd - CLPX LRSA Universal Transverse Mercator
                    12.5 meter grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_utm00025.gpd - CLPX LRSA Universal Transverse Mercator
                    25 meter grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_utm00250.gpd - CLPX LRSA Universal Transverse Mercator
                    250 meter grid
                    CLPX MOD02QKM, MOD09Q1, MOD13Q1

lrsa_utm00500.gpd - CLPX LRSA Universal Transverse Mercator
                    500 meter grid
                    CLPX MOD02HKM, MOD09A1, MOD10_L2, MOD10A1, MOD10A2

lrsa_utm01000.gpd - CLPX LRSA Universal Transverse Mercator
                    1 km grid
                    CLPX MOD021KM, MOD03, MOD11A1, MOD35_L2

lrsa_utm05000.gpd - CLPX LRSA Universal Transverse Mercator
                    5 km grid
                    CLPX MOD10C1, MOD10C2

lrsa_utm12500.gpd - CLPX LRSA Universal Transverse Mercator
                    12.5 km grid
                    No current data product, but referenced in MODIS CLPX
                    grids document.

lrsa_utm25000.gpd - CLPX LRSA Universal Transverse Mercator
                    25 km grid
                    CLPX SSM/I TBs, AMSR-E TBs

ramp.mpp          - Polar Stereographic for RAMP DEM
ramp1kmdem.gpd    - 1km RAMP DEM V2 Polar Stereographic
ramp400dem.gpd    - 400m RAMP DEM V2 Polar Stereographic

Ramp0125.gpd      - 125m RAMP Backscatter
Ramp0500.gpd      - 500m RAMP Backscatter
Ramp0750.gpd      - 750m RAMP Backscatter
Ramp1000.gpd      - 1000m RAMP Backscatter
Ramp1250.gpd      - 1250m RAMP Backscatter
Ramp1500.gpd      - 1500m RAMP Backscatter

Moa.mpp           - Polar Stereographic for Mosaic of Antarctica
Moa0125.gpd       - 125m Mosaic of Antarctica
Moa0750.gpd       - 750m Mosaic of Antarctica
```

### Unsupported mpp/gpd files:
```
0.09degree.gpd  - 0.09-degree "geographic" (Cylindrical Equidistant) (used for
                  Science on the Sphere images in sea ice.)
0.05degree.gpd  - 0.05-degree "geographic" (Cylindrical Equidistant)
                  (MODIS products call this "Climate Modeller's Grid" CMG)
0.1degree.gpd   - 0.1-degree "geographic" (Cylindrical Equidistant)
0.2degree.gpd   - 0.2-degree "geographic" (Cylindrical Equidistant)
0.25degree.gpd  - 0.25-degree "geographic" (Cylindrical Equidistant)
0.3degree.gpd   - 0.3-degree "geographic" (Cylindrical Equidistant)
0.5degree.gpd   - 0.5-degree "geographic" (Cylindrical Equidistant)

1degree.gpd     - 1-degree "geographic" (Cylindrical Equidistant)
2degree.gpd     - 2-degree "geographic" (Cylindrical Equidistant)

Gl25000.gpd     - Greenland subset of Nl grid (Northern Hemisphere 25 km
                  EASE-Grid)

kmz.gpd         - rectangular grid on Cylindrical Equidistant used for displaying
                  polar regions more clearly in google earth.

M50.gpd         - 50 km Global Cylindrical EASE-Grid

N5.gpd                - 5 km Northern Hemisphere EASE-Grid
N5conus.gpd     - 5 km CONUS EASE-Grid

N10.gpd                - 10 km Northern Hemisphere EASE-Grid

N1TibP.gpd      - 1 km EASE-Grid, subset of the Tibetan Plateau

N2TibP.gpd      - 2.5 km EASE-Grid, subset of the Tibetan Plateau

N250km.gpd      - Northern Hemisphere, 250 km EASE-Grid, with North Pole
                  at intersection of center 4 cells.  "New" (parameter:value)
                  format gpd.

N50.gpd                - 50 km Northern Hemisphere EASE-Grid

Nha.gpd         - 12.5 km Northern Hemisphere EASE-Grid. 721 x 721 subset
                  of Nh.gpd, centered at North Pole.

Nva.gpd         - 6.25 km Northern Hemisphere EASE-Grid. 1441 x 1441,
                  centered at North Pole.

Nups01000.gpd   - 1 km Northern Hemisphere Universal Polar Stereographic.
                  Used for UTM for regions north of 84 degrees north
                  latitude.

Sups01000.gpd   - 1 km Southern Hemisphere Universal Polar Stereographic.
                  Used for UTM for regions south of 80 degrees south
                  latitude.

S5.gpd                - 5 km Southern Hemisphere EASE-Grid
S50.gpd                - 50 km Southern Hemisphere EASE-Grid

Sha.gpd         - 12.5 km Southern Hemisphere EASE-Grid, 721x721 subset
                  of Nl.gpd, centered at South Pole.

Sva.gpd         - 6.25 km Southern Hemisphere EASE-Grid, 1441x1441,
                  centered at South Pole.

afghan_swe.gpd  - 500 m Afghanistan EASE-Grid

conus_geo030.gpd - Snow Data Assimilation System (SNODAS) Contiguous US
                   (CONUS) 30 arc-second Cylindrical Equidistant (lat/lon) grid

lhasa.gpd       - 4 km Tibet Plateau region (centered on Lhasa) subset of Nl grid
                  (Northern Hemisphere 25 km EASE-Grid)

lrsa_geo1440.0.gpd - CLPX LRSA "geographic" (Cylindrical Equidistant)
                  0.4-degree grid

lrsa_utm50000.0.gpd - CLPX LRSA Universal Transverse Mercator
                  50 km grid

ncep.mpp        - 2.5-degree NCEP Northern Hemisphere, cylindrical equidistant,
                  centered a the International Date Line.

ncep.gpd        - 2.5-degree NCEP grid, Northern Hemisphere only

ncep_global.mpp - 2.5-degree NCEP global, cylindrical equidistant,
                  centered at the Greenwich Meridian

ncep_global.gpd - 2.5-degree NCEP grid, Northern Hemisphere only

noaa_wksn.gpd   - Describes the NOAA weekly snow maps grid (89x89, polar
noaa_wksn.mpp          stereo)

IGH1km.gpd        - Interrupted Goode's Homolosine at 1 km, used for
                  global landcover maps from EDC gigbp2_0g.img

IGH8km.gpd        - Interrupted Goode's Homolosine at 8 km

gl_g1km.gpd        - Interrupted Goode's Homolosine at 1 km, used for
                  global landcover maps from BU gl_g.sds01.v4.bin

etopo5.gpd        - global 5 minute maps like etopo5.dat
etopo5.mpp

gtopo30.gpd        - global 30 arc-second (~1 km) maps like GLOBE

Mease.gpd       - global 1 meter Ease-Grid
Mease.mpp

BergsScotiaSea250.gpd    - 250 meter Lambert Conic Conformal for
BergsSouthGeorgia250.gpd   iceberg monitoring

Moa125.gpd      - 125m Mosaic of Antarctica
                  Used for internal development at NSIDC
Moa750.gpd      - 750m Mosaic of Antarctica
                  Used for internal development at NSIDC
westUS2km.gpd   - 2 km Western US region subset of Nl grid
                  (Northern Hemisphere 25 km EASE-Grid)
```

---

Guidelines to consider when defining new EASE-Grid gpds:

Use the new format (parameter:value, all in the .gpd, no separate .mpp
file).  It's easier to read and maintain.

Keep units in meters.  Although mapx can handle other units, other units
can cause confusion in the utilities like xytest.  For clean ways to nest
grids inside existing grids, see examples like Moa125.gpd and Grn250m.gpd.

Full hemisphere Azimuthal grids:

Keep the math simple wrt an existing grid.  If the new grid is X times the old
resolution, then make the coordinates multiply by X.  Examples:
N50 = Nl/2 = Nh/4 = N10/5 = N5/10.

The original rule for EASE-Grids was to ensure that the equator was
properly included in the sampled coverage of the new grid (the samples
being the centers of the edge cells); however, this caused problems with
grid corner cells "wrapping" around the opposite pole.  The EASE-Grid-2.0
recommendation is to avoid this situation by placing the equator exactly
at or outside the edge cells.  The original EASE-Grid defined the pole at
the center of an odd number of grid cells (e.g. Nl.gpd used 721 x 721);
EASE-Grid 2.0 places the pole at the intersection of the center 4 cells,
in an even-numbered grid (e.g. EASE2_N25km.gpd uses 720 x 720).

The original EASE-Grid used a spherical Earth model, with R=6371.228 km.
Distances in the original mpp/gpd files were in km.

EASE-Grid-2.0 uses the WGS84 ellipsoid.  Keep the distances in meters.

Global grids:

1. Areal coverage:

   A. Should never have overlap in the horizontal dimension, i.e. the
   longitude of the left edge should be exactly equal to the longitude of the
   right edge

   B. Cannot (by definition) extend beyond the poles in the vertical
   dimension.  Depending on the cell size, this will probably mean that the
   poles will not be covered.  (If you care that much, you should probably be
   using an azimuthal grid, anyway.)

1. Refer to rules for azimuthal grids wrt nesting cells in another existing
   grid.

---

## Level of Support

* This repository is not actively supported by NSIDC but we welcome issue submissions and pull requests in order to foster community contribution.

## Requirements

* None, but these files are used primarily with [mapx](https://github.com/nsidc/mapx)

## License

See [LICENSE](LICENSE.md)

## Code of Conduct

See [Code of Conduct](CODE_OF_CONDUCT.md)

## Credit

This software was developed by the National Snow and Ice Data Center with funding from multiple sources.

---

For questions or problems with these mpp/gpd files, please contact:

User Services  
National Snow and Ice Data Center  
CIRES, 449 UCB  
University of Colorado  
Boulder, CO, USA 80309-0449  
Phone: +1 303-492-6199  
Fax: +1 303-492-2468  
E-mail: nsidc@nsidc.org
