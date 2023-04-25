#' Calculate distance to a star
#'
#' @param relative_luminosity Relative luminosity of the star (L/Lo)
#' @param temperature The star's temperature in Kelvin
#' @param absolute_magnitude Absolute magnitude of the star (Mv)
#' @param bolometric_correction the bolometric correction for the star, which corrects for the fact that the visual magnitude (Mv) only accounts for a portion of the star's total luminosity. The bolometric correction depends on the star's spectral type and can be estimated from a table or calculated using a formula.
#'
#' @return Distance to the star (in parsecs)
#'
#' @examples
#' starDist(3.846e26, 5778, 4.83, (-0.2 * (0.656 - 0.43)))
#' starDist(3.846e26, 5778, 4.83, -0.0452)
#'
#' @export
starDist <- function(relative_luminosity, temperature, absolute_magnitude, bolometric_correction) {
  # Constants
  sigma <- 5.67e-8 # Stefan-Boltzmann constant
  Mv_sun <- 4.83   # Absolute magnitude of the Sun

  distance_pc <- sqrt((relative_luminosity / (4 * pi * sigma * temperature^4)) / 10^(0.4*(absolute_magnitude - Mv_sun - bolometric_correction + 5)))
}
