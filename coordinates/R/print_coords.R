#' @title Print coordinate pairs (method)
#' @param coords object
#' @return coordinate pairs `(x, y)`.
#' @note the `print` function is executed implicitly when a result is displayed.
#' @export

print.coords <- function(obj) {
    print(paste("(",
                format(xcoords(obj)),
                ", ",
                format(ycoords(obj)),
                ")", sep = ""),
          quote = FALSE)
}
