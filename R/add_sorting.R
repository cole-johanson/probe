#' Add sorting
#'
#' Sort based on some criteria
#'
#' @param x A categorical vector
#' @param method One of:
#' \itemize{
#'   \item{"count_desc"}{Descending count}
#' }
add_sorting <- function(x, method="count_desc") {
  if(method == "count_desc") {
    levels = tibble(x=x) %>%
      group_by(x) %>%
      summarise(n=dplyr::n()) %>%
      arrange(desc(n)) %>%
      pull(x)
  } else {
    rlang::abort(stringr::str_glue('Unsupported method: {method}'))
  }

  factor(x,levels=levels)
}
