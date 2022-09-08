test_that("add_sorting works", {
  unsorted_t = tibble(val = c("x","x","a","a","a"))
  sorted_t = tibble(val = factor(c("x","x","a","a","a"),levels=c("a","x")))
  expect_equal(
    unsorted_t %>% mutate(val=add_sorting(val,method="count_desc")),
    sorted_t
  )
})
