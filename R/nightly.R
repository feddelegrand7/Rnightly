#' Implement a dark/light toggle mode by default
#'
#' @description Implement a default dark/light toggle mode that will be triggered by any shiny element. The user can also define other colors to work with.
#' @param trigElement the id of the shiny element that will trigger the toggle mode
#' @param bodyColor the color of the application's body after clicking on the trigElement. Defaults to #282828 (dark)
#' @param txtColor the color of the text within the application after clicking on the trigElement. Defaults to #f5f5f5 (white)
#' @param inpTxtColor the color of the text within the shiny inputs after clicking on the trigElement. Defaults to #f5f5f5 (white)
#' @param inpBgColor the color of the background of the shiny inputs after clicking on the trigElement. Defaults to #313131 (Very Dark Grey)
#'
#' @return A default dark/light toggle mode in shiny ui
#' @export
#'
#' @examples
#' if (interactive()) {

#' ui <- fluidPage(
#'  use_nightly(),
#'
#'  h1("Click on the Plot to Toggle a Dark/Light Mode in you Shiny Application"),
#'
#'  plotOutput(outputId = "plt1"),
#'
#'  nightly(trigElement = "plt1")
#'
#' )
#'
#'
#' server <- function(input, output) {
#'
#' output$plt1 <- renderPlot({
#'
#'
#' plot(mtcars)
#'
#'
#' })
#'
#'
#' }
#'
#'
#' shinyApp(ui = ui, server = server)
#'
#'
#' }
#'
#'
#'

nightly <- function(trigElement, bodyColor = "#282828", txtColor = "#f5f5f5", inpTxtColor = "#f5f5f5", inpBgColor = "#313131"){


  tags$script(HTML(glue::glue(

    "

var nightModeConfig = {{
  body: '{bodyColor}',
  texts: '{txtColor}',
  inputs: {{
    color: '{inpTxtColor}',
    backgroundColor: '{inpBgColor}',
  }}
}};

var Nightly = new Nightly(nightModeConfig, true);


    document.getElementById('{trigElement}').addEventListener('click', function(){{
    Nightly.toggle();
  }});

                 "



  )))














}

