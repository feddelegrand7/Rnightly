

#' Enables the nightly javascript library
#'
#' @description The function activates the capabilities of the nightly javascript library. The user can put it anywhere within the UI.
#'
#' @return called for the side effect of activating the scrollrevealjs library
#' @export
#'
#' @examples \donttest{
#'
#' # Put the function within your shiny ui
#'
#' use_nightly()
#'
#'
#'
#' }


use_nightly <- function(){


htmltools::tags$script(src="https://cdn.jsdelivr.net/gh/fcmam5/nightly.js@v1.0/dist/nightly.min.js")




}
