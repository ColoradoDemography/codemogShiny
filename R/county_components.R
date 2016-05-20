#' Create a ploty chart showing the components of change by county
#'
#' This function will generate a UI element for shiny that
#'
#' @param county
#' @importFrom plotly renderPlotly
#' @importFrom codemogAPI county_profile
#' @export
#'


county_components = function(input, output, session, fips=0, name="Colorado"){

  data=reactive({county_profile(fips,c(1985:2014), vars=c("naturalincrease", "netmigration"))})


  output$components_p=renderPlotly({plot_ly(data(), x=year,y=as.numeric(naturalincrease)+as.numeric(netmigration), line=list(color="rgb(31,74,126)", width=2.5, dash="solid"), name= "Total Population Change")%>%
      add_trace(x=year,y=as.numeric(naturalincrease), line=list(color="rgb(0,149,58)", width=2.5, dash="dot"), name= "Natural Increase")%>%
      add_trace(x=year,y=as.numeric(netmigration), type= "line", line=list(color = "rgb(92,102,112)", width=2.5, dash="dot"), name="Net Migration")%>%
      layout(
        barmode="stacked",
        title=paste(name, " Births, Deaths, and Net Migration 1985 to", as.character(max(data()$year))),
        xaxis=list(
          title="Year"),
        yaxis=list(
          title="Population Change"),
        margin=list(t=60)
      )})

}
