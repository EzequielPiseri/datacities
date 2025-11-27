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
#> # A tibble: 1 × 4
#>   ciudad  poblacion superficie densidad
#>   <chr>       <dbl>      <dbl>    <dbl>
#> 1 Rosario    948312        178    5328.

# Ciudad inexistente (generara error)
if (FALSE) { # \dontrun{
resumen_ciudad("Atlantis")
} # }
```
