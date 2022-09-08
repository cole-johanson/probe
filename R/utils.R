#' Feather palette
#'
#' Inspired by 'You Had Your Soul With You' by The National
#'
#' @export
palette_feather = c(
  "Ocean" = "4B6876",
  "Lipstick" = "B85D66",
  "Brass" = "BCA54B",
  "Ecru" = "BDAE88",
  "Olive" = "5E662E",
  "Gray" = "B9BBBB",
  "Rose" = "AE4C3E",
  "Silver" = "A9B0B1",
  "Powder" = "FBFCFA"
)

#' Is integer
#'
#' Check whether a numeric is an integer or not
#'
#' @param x a numeric value or vector
#'
#' @examples
#' is_integer(2)
#' is_integer(c(2,2.5))
#'
#' @export
is_integer <- function(x) {
  x %% 1 == 0
}

