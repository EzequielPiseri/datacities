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
  - [`leer_ciudades()`](https://ezequielpiseri.github.io/datacities/reference/leer_ciudades.md)
  - [`resumen_ciudad()`](https://ezequielpiseri.github.io/datacities/reference/resumen_ciudad.md)
  - [`filtrar_region()`](https://ezequielpiseri.github.io/datacities/reference/filtrar_region.md)
