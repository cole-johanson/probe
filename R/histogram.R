#' Histogram
#'
#' Creates a Plotly object histogram in a single step
#'
#' @param x a numeric vector,
#' @param color_num An integer  between
#' @param ... parameters passed to plotly::plot_ly()
#'
#' @examples histogram(mtcars$mpg, nbinsx=10)
#'
#' @export
histogram <- function(x, color_num = 1, ...) {
  if(!(is_integer(color_num) & length(color_num==1) & dplyr::between(color_num,1,length(palette_feather)))) {
    rlang::abort(stringr::str_glue("color_num must be an integere between 1 and {length(palette_feather)}"))
  }

  if(!is.numeric(x)) {
    rlang::abort("x must be a numeric vector")
  }

  plotly::plot_ly(
    tibble::as_tibble(x=x),
    x=~x,
    type = "histogram",
    marker = list(color = palette_feather[color_num]),
    ...
  )
}


