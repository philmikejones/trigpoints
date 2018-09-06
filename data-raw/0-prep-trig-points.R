# Obtain and prepare the full list of trig points from
# https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations

library("dplyr")
library("readr")
library("lubridate")


if (!file.exists("inst/extdata/CompleteTrigArchive.zip")) {
  download.file(
    "https://www.ordnancesurvey.co.uk/docs/gps/CompleteTrigArchive.zip",
    destfile = "inst/extdata/CompleteTrigArchive.zip"
  )
}

unzip(
  "inst/extdata/CompleteTrigArchive.zip",
  exdir = "inst/extdata/",
  overwrite = TRUE
)

trig =
  read_csv("inst/extdata/CompleteTrigArchive.csv") %>%
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
  )

usethis::use_data(trig, overwrite = TRUE, compress = "xz")
