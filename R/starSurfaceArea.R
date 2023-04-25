#' Calculate the surface area of the star in kilometers
#'
#' @param relative_radius Relative Radius of the star (R/Ro) Where Ro is the radius of the Sun
#'
#' @return Surface Area of the star (in kilometers)
#'
#' @examples
#' starSurfaceArea(0.16)
#'
#' @export
starSurfaceArea <- function(relative_radius) {
  solar_radius <- 696340                    # Avg Radius of the sun in Km
  radius <- relative_radius * solar_radius  # Convert relative radius to Km
  surface_area <- 4 * pi * radius^2
  return(surface_area)
}
