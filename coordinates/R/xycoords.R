#' @title extract xcoordinates
#' @param coords object containing x and y coordinates
#' @return list of x coords
xcoords <- function(obj) obj$x # extract x values


#' @title extract ycoordinates
#' @param coords object containing x and y coordinates
#' @return list of y coords
ycoords <- function(obj) obj$y # extract y values

#' @title extract values
#' @param coords object containing x, y and v coordinates
#' @return list of values
values <- function(obj) obj$v # extract values
