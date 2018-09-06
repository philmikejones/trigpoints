#' Trig points.
#'
#' List of all UK trig points
#'
#' @source \url{https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations}
#'
#' @format A data frame with 16 variables:
#' \describe{
#'   \item{name}{Station name, assigned by surveyor}
#'   \item{station}{Further station details}
#'   \item{new_name}{Further station details}
#'   \item{easting}{Easting coordinate}
#'   \item{northing}{Northing coordinate}
#'   \item{height}{Height above Ordnance Datum in metres}
#'   \item{order}{Level of precision to which the station was observed. 1 is highest; 4 is lowest}
#'   \item{type}{Type of station}
#'   \item{sec_com}{Which computation block the station was computed and adjusted in}
#'   \item{com_date}{Year of computation or recomputation}
#'   \item{maintained}{Date of last maintenance}
#'   \item{lvl_class}{Precision of the levelling}
#'   \item{lvl_date}{Date of levelling}
#'   \item{lvl_datum}{Datum the levelling refers to}
#'   \item{destroyed}{1 = destroyed; 0 = exists}
#'   \item{notes}{Additional notes}
#' }
#'
"trig"
