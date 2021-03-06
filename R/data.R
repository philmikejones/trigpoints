#' @importFrom tibble tibble
#' @importFrom sf st_sf
#' @importFrom sf st_sfc
NULL

#' Trig points.
#'
#' List of all UK trig points
#' Contains OS data © Crown copyright and database right (2018)
#'
#' @source \url{https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations}
#'
#' @format A data frame with 16 variables:
#' \describe{
#'   \item{name}{Station name, assigned by surveyor}
#'   \item{station}{Further station details}
#'   \item{new_name}{Further station details}
#'   \item{height}{Height above Ordnance Datum in metres}
#'   \item{order}{Level of precision to which the station was observed. 1 is highest; 4 is lowest}
#'   \item{type}{Type of station}
#'   \item{sec_com_blk}{Which computation block the station was computed and adjusted in}
#'   \item{com_date}{Year of last computation}
#'   \item{maintained}{Date of last maintenance}
#'   \item{lvl_class}{Precision of the levelling}
#'   \item{lvl_date}{Date of levelling}
#'   \item{lvl_datum}{Datum the levelling refers to}
#'   \item{destroyed}{1 = destroyed; 0 = exists}
#'   \item{notes}{Additional notes}
#'   \item{geometry}{Coordinates in OSGB36 British National Grid (easting, northing)}
#' }
"trigpoints"
