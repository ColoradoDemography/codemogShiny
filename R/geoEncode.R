#' Create a drop-down menu of county or municipality names
#'
#' This function will generate a UI element for shiny that
#'
#' @param name geography name output from geoInput
#' @param type county is default, "place" will return place names
#' @export
#'

geoEncode= function(name, type= "county"){

  if (type=="county"){
    fips=county_names%>%
      filter(county==name)%>%
      select(countyfips)
  }else{
    fips=places_names%>%
      filter(place==name)%>%
      select(placefips)
  }
fips=as.numeric(fips)
}
