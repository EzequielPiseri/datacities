# Resumen de una ciudad

Esta función devuelve un resumen con la poblacin, superficie y densidad
poblacional de una ciudad especifica.

## Usage

``` r
resumen_ciudad(nombre_ciudad)
```

## Arguments

- nombre_ciudad:

  Cadena de texto con el nombre de la ciudad.

## Value

Un tibble de una fila con columnas: ciudad, poblacion, superficie y
densidad.

## Examples

``` r
# Ciudad valida
resumen_ciudad("Rosario")
#> Warning: Unknown or uninitialised column: `superficie`.
#> Warning: Unknown or uninitialised column: `superficie`.
#> # A tibble: 0 × 3
#> # ℹ 3 variables: ciudad <chr>, poblacion <dbl>, densidad <dbl>

# Ciudad inexistente (generara error)
if (FALSE) { # \dontrun{
resumen_ciudad("Atlantis")
} # }
```
