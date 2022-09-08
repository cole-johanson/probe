test_that("is_integer works", {
  expect_equal(is_integer(2), TRUE)
  expect_equal(is_integer(0), TRUE)
  expect_equal(is_integer(-2), TRUE)
  expect_equal(is_integer(2.5), FALSE)
  expect_equal(is_integer(c(1,2.5)), c(T,F))
  expect_error(is_integer("a"))
})

test_that("histogram works", {
  expect_true(inherits(histogram(mtcars$mpg), "plotly"))
  expect_true(inherits(histogram(mtcars$mpg, nbinsx=10), "plotly"))

  expect_error(histogram(mtcars$mpg, color_num=2.5))
  expect_error(histogram(mtcars$mpg, color_num=1000))
  expect_error(histogram(mtcars$mpg, color_num="a"))
})
