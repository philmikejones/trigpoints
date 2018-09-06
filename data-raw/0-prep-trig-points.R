# Obtain and prepare the full list of trig points from
# https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations

library("dplyr")
library("readr")
library("lubridate")
library("sf")

tmp_dir = tempdir()

download.file(
  "https://www.ordnancesurvey.co.uk/docs/gps/CompleteTrigArchive.zip",
  destfile = paste0(tmp_dir, "CompleteTrigArchive.zip")
)

unzip(
  paste0(tmp_dir, "CompleteTrigArchive.zip"),
  exdir = tmp_dir
)

trigpoints =
  read_csv(paste0(tmp_dir, "CompleteTrigArchive.zip")) %>%
  rename(
    name        = `Trig Name`,
    station     = `STATION NAME`,
    new_name    = `New Name`,
    easting     = EASTING,
    northing    = NORTHING,
    height      = HEIGHT,
    order       = ORDER,
    type        = `TYPE OF MARK`,
    sec_com_blk = `SECONDARY COMPUTING BLOCK`,
    com_date    = `Computing Date`,
    maintained  = `Maintained`,
    lvl_class   = `CLASS OF LEVELLING`,
    lvl_date    = `Date of Levelling`,
    lvl_datum   = `LEVELLING DATUM`,
    destroyed   = `DESTROYED MARK INDICATOR`,
    notes       = COMMENTS
  ) %>%
  mutate(
    com_date   = dmy(com_date),
    maintained = dmy(maintained),
    lvl_date   = dmy(lvl_date)
  ) %>%
  st_as_sf(coords = c("easting", "northing"), crs = 27700)

usethis::use_data(trigpoints, overwrite = TRUE, compress = "xz")
