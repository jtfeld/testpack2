#' Import the ufo table
#'
#' @usage ufo_data(include_descrip = FALSE)
#' @param include_descrip Whether to include the event description,
#'   Default is FALSE
#' @return Returns the ufo sightings table.  See \link{ufo}
#' @importFrom magrittr %>%
#' @examples
#' ufo = ufo_data()
#'
#'
#' @export

ufo_data = function(include_descrip = FALSE){

  if(include_descrip == T){
    return(ufo)
  } else {
    ufo =
      ufo %>%
      dplyr::select(-summary)
    return(ufo)
  }

}
