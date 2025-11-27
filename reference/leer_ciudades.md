# Leer ciudades desde los datos internos

Esta funcion devuelve el dataset interno `ciudades` como un tibble. El
dataset es cargado automaticamente desde la carpeta `data/` cuando el
paquete es cargado.

## Usage

``` r
leer_ciudades()
```

## Value

Un tibble con los datos del dataset `ciudades`.

## Examples

``` r
# Devuelve el dataset de ciudades
leer_ciudades()
#> # A tibble: 8 × 4
#>   nombre       region poblacion superficie_km2
#>   <chr>        <chr>      <dbl>          <dbl>
#> 1 Buenos Aires centro   3075646            203
#> 2 Córdoba      centro   1391000            576
#> 3 Rosario      centro    948312            178
#> 4 Mendoza      oeste    1150000             54
#> 5 Salta        norte     535000             60
#> 6 Neuquén      sur       340000             94
#> 7 Bariloche    sur       133500             27
#> 8 La Plata     centro    713947            940
```
