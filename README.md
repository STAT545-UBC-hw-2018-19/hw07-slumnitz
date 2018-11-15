# STAT 545 - HW 07: Building your own R package

This repository contains the homework assignment for the R course [STATS 545](http://stat545.com). A description of the assignment can be found [here](http://stat545.com/Classroom/assignments/hw07/hw07.html) and important information about the course can be found in the [course classroom](http://stat545.com/Classroom/).

This assignment and repository is developed and maintained by **Stefanie Lumnitz**.

## Content

For illustration purposes I decided to create my own R-package. I wanted to learn more about Object Oriented (OO) programming and found an OO programming style did not suit the `powers` or `foofactors` packages well.

Tasks | Fullfilled | files
------|------------|------
Design your own package | :heavy_check_mark: | [working with spatial data - coordinates points](https://github.com/STAT545-UBC-students/hw07-slumnitz/tree/master/coordinates)
Implement S3 object oriented functions | :heavy_check_mark: | [coords](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/R/coords.R) and [vcoords](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/R/vcoords.R) objects
Add a family of related functions instead of just one | :heavy_check_mark: | [see all functions in R-functions folder](https://github.com/STAT545-UBC-students/hw07-slumnitz/tree/master/coordinates/R)
Define and export one or more functions | :heavy_check_mark: | [`math.coords` example](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/R/math_coords.R)
Give function arguments sensible defaults, where relevant. | not relevant | creation of objects at core of package
Document all exported functions. | :heavy_check_mark: | [document exported and non exported arithmetic method functions](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/R/arithm_vcoords.R)
Include at least three unit tests | :heavy_check_mark: | example test for [`arithmetic methods`](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/tests/testthat/test_arithm_vcoords.R) and [S3 objects](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/tests/testthat/test_coords.R)
Your package should pass check() without errors | :heavy_check_mark: | [build is passing](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/README.md)
Update the README | :heavy_check_mark: | [creation of own README](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/README.md)
Update vignette | :heavy_check_mark: | [vignette on using `coordinates`](https://github.com/STAT545-UBC-students/hw07-slumnitz/blob/master/coordinates/vignettes/using_coords.Rmd)
Modify the instructions telling someone how to install your package. | :heavy_check_mark: | instructions on [README.md](https://github.com/STAT545-UBC-students/hw07-slumnitz/tree/master/coordinates)


## Resources

- [Packaging cheat sheet](https://rawgit.com/rstudio/cheatsheets/master/package-development.pdf)
- [OO field guide](http://adv-r.had.co.nz/OO-essentials.html#s3)
- [S3 class](https://www.datamentor.io/r-programming/s3-class/)
- [S3 system](https://www.stat.auckland.ac.nz/~stats782/downloads/08-Objects-S3-handouts.pdf)
- [S3 test examples](https://github.com/cloudyr/aws.s3/blob/master/tests/testthat/test-authenticated-object.R)
