[![Travis-CI Build Status](https://travis-ci.org/philmikejones/trigpoints.svg?branch=master)](https://travis-ci.org/philmikejones/trigpoints)

# Trig Points

Data set of UK [trig points](https://en.wikipedia.org/wiki/Triangulation_station) for use with R.


## Installation

```r
devtools::install_github("philmikejones/trigpoints")
```


## Source and licence

Copyright 2018 Phil Mike Jones.
Licensed under the terms of the MIT License.
see [LICENSE](LICENSE)

Contains OS data &copy; Crown copyright and database right (2018)

The full list of trig points was obtained from: https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations


## Unmaintained data

The list is no longer actively maintained so there are a few caveats:

- The coordinates specified are not true OSGB36 National Grid coordinates. They are expected to be accurate to within a metre so will be fine for most purposes.
- The `destroyed` marker (`1` = `TRUE`; `0` = `FALSE`) is not maintained, so stations marked as not destroyed could no longer exist.


## Station types

(Copied verbatim from the OS page).

- Ground stations
    - Triangulation pillar - This consists of either a concrete or natural stone pillar, 1.2 m high with a brass plate set into the top to accept a survey instrument. 
    - Surface mark - This is normally a dome-head brass bolt or rivet set into natural rock or a concrete block at ground level.
    - Buried mark - This is normally a brass bolt, rod or rivet set into a concrete block 60 cm below ground level.
- Roof stations - The station is sited on a flat roof consisting of either a dome-head bolt or rivet positioned with enough space to set up a tripod.
- Intersected station - These are 'non-occupiable' stations consisting of church spires, chimneys or mast.


## Contributions

[Issues](https://github.com/philmikejones/trigpoints/issues) and [pull requests](https://github.com/philmikejones/trigpoints/pulls) welcome for improvements or suggestions.
Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.
