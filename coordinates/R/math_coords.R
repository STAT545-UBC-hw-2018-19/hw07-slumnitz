#' @title group method for all standard mathematical transformations
#' @param vcoords object
#' @return coordinate pairs and transformed values
#' @export

Math.vcoords <- function(x)
    vcoords(xcoords(x),
            ycoords(x),
            get(.Generic)(values(x)))
