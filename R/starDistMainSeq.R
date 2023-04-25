#' Calculate distance to a (main sequence) star
#'
#' @param relative_luminosity Relative luminosity of the star (L/Lo)
#' @param absolute_magnitude Absolute magnitude of the star (Mv)
#'
#' @return Distance to the main sequence star (in parsecs)
#'
#' @examples
#' starDistMainSeq(0.0024, 16.1)
#'
#' @export
starDistMainSeq <- function(relative_luminosity, absolute_magnitude) {
  distance = sqrt((relative_luminosity) / (10^(0.4*(absolute_magnitude-4.77))))
}
