#' Data for the StarFunctions Package
#'
#' Contains mulitple observations for each star
#'
#' @format A data frame with 240 rows and 7 variables:
#' \describe{
#'    \item{Temperature}{Absolute Temperature (in K)}
#'    \item{Luminosity}{Relative Luminosity (L/Lo)}
#'    \item{Radius}{Relative Radius (R/Ro)}
#'    \item{Absolute.Magnitude}{Absolute Magnitude (Mv)}
#'    \item{Star.type}{Star Type (Red Dwarf, Brown Dwarf, White Dwarf, Main Sequence , SuperGiants, HyperGiants)}
#'    \item{Star.color}{Star Color (white,Red,Blue,Yellow,yellow-orange etc)}
#'    \item{Spectral.Class}{Spectral Class (O,B,A,F,G,K,,M)}
#'    }
#'
#'    @source {https://www.kaggle.com/datasets/deepu1109/star-dataset}
#'
#'    @examples
#'    data(starData)     # Lazy Loading
#'
"starData"
