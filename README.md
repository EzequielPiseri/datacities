
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/EzequielPiseri/datacities/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/EzequielPiseri/datacities/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/EzequielPiseri/datacities/graph/badge.svg)](https://app.codecov.io/gh/EzequielPiseri/datacities)
<!-- badges: end -->

# Introduccion

`datacities` es un paquete que incluye un dataset interno de ciudades y
funciones para explorarlo de forma simple.

# Instalacion

Instalar desde GitHub:

``` r
# install.packages("devtools")
devtools::install_github("EzequielPiseri/datacities")
```

# Ejemplos

``` r
library(datacities)

# 1. Cargar dataset
leer_ciudades()

# 2. Resumen de una ciudad
resumen_ciudad("Rosario")

# 3. Filtrar por region
filtrar_region("norte")
```

# Estructura del paquete

- Dataset interno `ciudades`
- Funciones:
  - `leer_ciudades()`
  - `resumen_ciudad()`
  - `filtrar_region()`
