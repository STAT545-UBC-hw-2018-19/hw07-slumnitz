#' @title Test if coordinates are the same in both objects
#' @param obj1 vcoords object one
#' @param obj2 vcoords object two
#' @return boolean (TRUE or FALSE)
test_location <-
  function(obj1, obj2)
    (length(values(obj1)) == length(values(obj2))
     || all(xcoords(obj1) == xcoords(obj2))
     || all(ycoords(obj1) == ycoords(obj2)))


#' @title simple arithmetic methods for vcoords objects
#' @param obj1 vcoords object or vector one
#' @param obj2 vcoords object or vector two
#' @return coordinate pairs and transformed values
#' @note allows value transformation in the format e.g. `(obj1*obj2)` or `(obj1*2)`
#' @export

Ops.vcoords <-
  function(obj1, obj2) {
    if (missing(obj1)) {
      x <- xcoords(obj1)
      y <- ycoords(obj1)
      v <- get(.Generic)(values(obj1))
    }
    else {
      is.vc1 = inherits(obj1, "vcoords")
      is.vc2 = inherits(obj2, "vcoords")
      if (is.vc1 && is.vc2) {
        # both objects are vcoords
        if (!test_location(obj1, obj2))
          stop("different locations")
        x <- xcoords(obj1)
        y <- ycoords(obj1)
        v <- get(.Generic)(values(obj1), values(obj2))
      }
      else if (is.vc1) {
        # just the first object is vcoords
        if (length(obj1) < length(obj2))
          stop("size mismatch")
        x <- xcoords(obj1)
        y <- ycoords(obj1)
        v <- get(.Generic)(values(obj1), obj2)
      }
      else if (is.vc2) {
        # just the second object is vcoords
        if (length(obj1) > length(obj2))
          stop("size mismatch")
        x <- xcoords(obj2)
        y <- ycoords(obj2)
        v <- get(.Generic)(values(obj2), obj1)
      }
    }
    if (!is.na(match(.Generic, c("=", "!=",
                                 "<", "<=",
                                 ">", ">="))))
      v
    else
      vcoords(x, y, v)
  }
