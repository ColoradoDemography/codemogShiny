#' Create a ploty chart showing the components of change by county
#'
#' This function will generate a UI element for shiny that
#'
#' @param county
#' @importFrom plotly renderPlotly
#' @export
#'


county_componentsUI = function(id){
  ns=NS(id)
  tagList(
  renderPlotly({ns("components")})
)
}
