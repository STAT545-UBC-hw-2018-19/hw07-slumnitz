#' @title determine edge coordinates
#' @param coords object
#' @return min and max values of coordinate pairs

edge <-
  function(obj)
    UseMethod("edge")

edge.coords <-
  function(obj) {
    bb = rbind(range(xcoords(obj)),
               range(ycoords(obj)))
    dimnames(bb) = list(c("x:", "y:"),
                        c("min", "max")) # extract min and max values
    bb }
