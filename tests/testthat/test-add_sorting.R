test_that("add_sorting works", {
  # count_desc
  unsorted_t = tibble(val = c("x","x","a","a","a"))
  sorted_t = tibble(val = factor(c("x","x","a","a","a"),levels=c("a","x")))
  expect_equal(
    unsorted_t %>% mutate(val=add_sorting(val,method="count_desc")),
    sorted_t
  )

  # order
  vals = c("y","x","z","y")
  unsorted_t = tibble(val = vals)
  sorted_t = unsorted_t %>% mutate(val = factor(vals,c("y","x","z")))
  expect_equal(
    unsorted_t %>% mutate(val=add_sorting(val,method="order")),
    sorted_t
  )

  expect_error(add_sorting(c("1","2"),method="undefined"))
})
