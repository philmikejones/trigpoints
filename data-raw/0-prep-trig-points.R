# Obtain and prepare the full list of trig points from
# https://www.ordnancesurvey.co.uk/gps/legacy-control-information/triangulation-stations


download.file(
  "https://www.ordnancesurvey.co.uk/docs/gps/CompleteTrigArchive.zip",
  destfile = "inst/extdata/CompleteTrigArchive.zip"
)

unzip(
  "inst/extdata/CompleteTrigArchive.zip",
  exdir = "inst/extdata/"
)

trig =
  readr::read_csv("inst/extdata/CompleteTrigArchive.csv") %>%
  dplyr::rename(
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
  dplyr::mutate(
    com_date   = lubridate::dmy(com_date),
    maintained = lubridate::dmy(maintained),
    lvl_date   = lubridate::dmy(lvl_date)
  )

dir.create("data/", showWarnings = FALSE)
saveRDS(trig, "data/trig.rds", compress = "xz")
