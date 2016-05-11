#' Create a drop-down menu of county or municipality names
#'
#' This function will generate a UI element for shiny that
#'
#' @param type county is default, "place" will return place names
#' @importFrom shiny selectInput


geoInput = function( type="county"){

 if (type=="county"){

   selectInput("county","County:",
               choices=county_names$county)

 } else {

     selectInput("place","Place:",
                 choices=place_names$place)


 }


}
