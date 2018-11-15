#' @title Create coordinate object
#' @param x as one or a list of numeric vectors of finite length
#' @param y as one or a list of numeric vectors of finite length
#' @return coordinate object containing `$x` and `$y` of class `coords`.
#' @export

coords <- # create and check object
  function(x, y)
  {
    if (!is.numeric(x) || !is.numeric(y) ||
        !all(is.finite(x)) ||
        !all(is.finite(y))) # check if x and y are numeric, and finite
      stop("invalid coordinates")
    if (length(x) != length(y)) # check if they have the same length
      stop("coordinate lengths differ")
    pts = list(x = x, y = y)
    class(pts) = "coords" # assign to class `coords``
    pts
  }
