
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package was developed for a class assignment. It is
useful but not maintained.

# coordinates

This is an R package that allows you to attach values to coordinate
points and manipulate them.

## Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-slumnitz/coordinates")
```

## Example

See the vignette for more extensive use, but here’s an example how to
create an object under the `coords` class:

``` r
library(coordinates)

lon <- round(rnorm(5), 2) # rounded to two decimal points
lat <- round(rnorm(5), 2)

coordinates <- coords(lon, lat)
class(coordinates)
#> [1] "coords"
```

## For Developers

(Again, I don’t actually intend for anyone to develop this silly
package, but if I did, here’s what I’d write.)

This package offers the great potential to practice code collaboration
and package development. If you are interested in contributing,
developing a method that automatically pairs equal coordinate points
before value manipulation could be extremely helpful. Check out the
[`Ops.coords` method]() for further development.
