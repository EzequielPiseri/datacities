library(readr)
library(tibble)

ciudades <- read_csv("data-raw/ciudades.csv") |>
  as_tibble()

usethis::use_data(ciudades, overwrite = TRUE)
