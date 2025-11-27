# Filtrar ciudades por region

Esta funcion filtra el dataset interno `ciudades` segun la region
seleccionada. Las regiones validas son: "norte", "centro" y "sur".

## Usage

``` r
filtrar_region(region)
```

## Arguments

- region:

  Cadena de texto indicando la region.

## Value

Un tibble con las ciudades pertenecientes a la region indicada.

## Examples

``` r
filtrar_region("norte")
#> # A tibble: 1 × 4
#>   nombre region poblacion superficie_km2
#>   <chr>  <chr>      <dbl>          <dbl>
#> 1 Salta  norte     535000             60

# Region invalida (genera error)
if (FALSE) { # \dontrun{
filtrar_region("patagonia")
} # }
```
