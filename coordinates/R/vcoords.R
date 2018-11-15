#' @title Create coordinate and value paired object
#' @param x as one or a list of numeric vectors of finite length
#' @param y as one or a list of numeric vectors of finite length
#' @param v value attached to coordinate
#' @return coordinate object containing `$x`, `$y` and `$v` of class `coords` and `vcoords`.
#' @export

vcoords <- # create and check object
  function(x, y, v)
  {
    if (!is.numeric(x) || !is.numeric(y) ||
        !is.numeric(v) ||
        !all(is.finite(x)) ||
        !all(is.finite(y))) # check if x and y are numeric, and finite
      stop("invalid coordinates")
    if(length(x) != length(y) ||
       length(x) != length(v)) # check if they have the same length
      stop("argument lengths differ")
    pts = list(x = x, y = y, v = v)
    class(pts) = c("vcoords", "coords") # assign to class `coords` and `vcoords`
    pts
  }
