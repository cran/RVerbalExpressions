#' Constructs a Verbal Expression
#'
#' @description Add this to the beginning of every verbal expression chain. This
#' simply returns an empty character vector so that the next step in the chain
#' can provide a value without explicitly writing \code{value = "blah"}.
#'
#' @examples
#' rx()
#'
#' # this
#' rx() %>%
#'   rx_find("cat") %>%
#'   rx_anything() %>%
#'   rx_find("dog")
#'
#' # instead of
#' rx_find(value = "cat") %>%
#'   rx_anything() %>%
#'   rx_find("dog")
#' @export
rx <- function() new_rx(character())
