## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(coordinates)

## ---- example data-------------------------------------------------------
lon <- round(rnorm(5), 2) # rounded to two decimal points
lat <- round(rnorm(5), 2)

coordinates <- coords(lon, lat)

## ------------------------------------------------------------------------
class(coordinates)

coordinates # what does our object contain?

## ------------------------------------------------------------------------
length(coordinates) # how many coordinate pairs are there?
knitr::kable(edge(coordinates)) # what are the edge coorinates?

## ------------------------------------------------------------------------
values <- round(runif(5, 0, 100))

(value_coords <- vcoords(lat, lon, values))
values(value_coords)
class(value_coords)

## ------------------------------------------------------------------------
sqrt(value_coords)
log(value_coords)

## ------------------------------------------------------------------------
value_coords * 20
value_coords > 50

## ------------------------------------------------------------------------
values_nextyear <- round(runif(5, 0, 100))
(value_nextyear <- vcoords(lat, lon, values_nextyear))

value_coords * values_nextyear
value_coords > values_nextyear

