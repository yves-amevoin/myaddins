context("test-working_functions")
library(magrittr)

tracking_vector <- c(NA, NA, "", "one", "two")

test_that("filtering doent work", {
  expect_equal(fec(tracking_vector), c("one", "two"))
})
