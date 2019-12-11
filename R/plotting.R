#' Plot ufo sightings by month
#'
#' @usage plotbymonth(state = "NV")
#' @param state state to use
#'   Default is "NV"
#' @return returns a plot.  See \link{ufo}
#' @importFrom magrittr %>%
#'
#'
#' @export


plotbymonth = function(state = "NV"){

  ufo %>%
    dplyr::filter(state == {{state}}) %>%
    ggplot2::ggplot(mapping = ggplot2::aes(x = lubridate::month(date))) +
    ggplot2::geom_histogram(bins = 12)

}
