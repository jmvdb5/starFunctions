#' Calculate the bolometric correction approximately for a star (by table), given its temperature.
#'
#' @param temperature The star's effective temperature in Kelvin
#'
#' @return Bolometric Correction (BC)
#'
#' @examples
#' bolCorrApprox(2800)
#'
#' @export
bolCorrApprox <- function(temperature) {
  # Notes indicate Spectral Type
  if(temperature<3500){return(-2.3)}  # M5 and lower
  if(temperature<4100 & temperature>=3500){return(-1.2)}  # M0 to K5
  if(temperature<4900 & temperature>=4100){return(-0.6)}  # K5 to K0
  if(temperature<5500 & temperature>=4900){return(-0.2)}  # K0 to G5
  if(temperature<6000 & temperature>=5500){return(-0.07)} # G5 to G0
  if(temperature<6600 & temperature>=6000){return(-0.03)} # G0 to F5
  if(temperature<7400 & temperature>=6600){return(0)}     # F5 to F0
  if(temperature<8500 & temperature>=7400){return(-0.06)} # F0 to A5
  if(temperature<9900 & temperature>=8500){return(-0.12)} # A5 to A0
  if(temperature<15500 & temperature>=9900){return(-0.4)}  # A0 to B5
  if(temperature<28000 & temperature>=15500){return(-1.5)}  # B5 to B0
  if(temperature<40000 & temperature>=28000){return(-2.8)}  # B0 to O5
  if(temperature>=40000){return(-4.0)}  # O5 and higher
}
