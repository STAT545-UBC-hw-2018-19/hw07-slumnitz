#' @title Print coordinate pairs (method)
#' @param coords object
#' @return coordinate pairs `(x, y; v)`.
#' @note the `print` function is executed implicitly when a result is displayed.
#' @export

print.vcoords <- function(obj) {
  print(paste("(",
              format(xcoords(obj)),
              ", ",
              format(ycoords(obj)),
              "; ",
              format(values(obj)),
              ")", sep = ""),
        quote = FALSE)
}
