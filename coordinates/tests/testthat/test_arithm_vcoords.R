context("Using arithmetic methods")

test_that("Inputs can be objects and vectors", {
  vcoords <- vcoords(c(1,1), c(2,2), c(3,3))
  test <- vcoords(c(1,1), c(2,2), c(6,6))
  expect_identical(vcoords*2, test)
  expect_identical(vcoords>2, c(TRUE, TRUE))
})

test_that("unequal coordinates are not used", {
  long <- vcoords(c(1,1,3), c(2,2,3), c(3,3,3))
  short <- vcoords(c(1,1), c(2,2), c(3,3))
  expect_false(length(long)==length(short))
  expect_error(long*short)
})
