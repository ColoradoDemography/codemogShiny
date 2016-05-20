#' Create a ploty chart showing the components of change by county
#'
#' This function will generate a UI element for shiny that
#'
#' @param county
#' @importFrom plotly plotlyOutput
#' @export
#'


county_componentsUI = function(id){
  ns=NS(id)
  tagList(
    plotlyOutput({ns("components_p")})
  )
}
