context("Creating coords and vcoords objects")

test_that("objects are s3 objects", {
  coords <- coords(c(1,1), c(2,2))
  vcoords <- vcoords(c(1,1), c(2,2), c(3,3))
  expect_s3_class(coords, "coords")
  expect_s3_class(vcoords, "coords")
  expect_s3_class(vcoords, "vcoords")
})

test_that("basic usage of objects", {
  coords <- coords(c(1,1), c(2,2))
  vcoords <- vcoords(c(1,1), c(2,2), c(3,3))
  expect_identical((c("x", "y", "v") %in% names(vcoords)), c(TRUE, TRUE, TRUE))
  expect_identical(c("x", "y") %in% names(coords),  c(TRUE, TRUE))
})
