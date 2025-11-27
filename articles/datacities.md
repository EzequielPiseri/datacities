# Guia de uso del paquete datacities

## Introduccion

Este paquete incluye un dataset interno llamado `ciudades` y tres
funciones principales:

- [`leer_ciudades()`](https://ezequielpiseri.github.io/datacities/reference/leer_ciudades.md)  
- `resumen_ciudad(nombre_ciudad)`  
- `filtrar_region(region)`

En esta vineta se explica como cargar los datos, como usar cada funcion
y se muestra un analisis reproducible.

## 1. Cargar el dataset

``` r
df <- leer_ciudades()
df
```

## 2. Uso de las funciones

### 2.1 leer_ciudades()

``` r
leer_ciudades()
```

### 2.2 resumen_ciudad(nombre_ciudad)

``` r
resumen_ciudad("Rosario")
```

### 2.3 filtrar_region(region)

``` r
filtrar_region("norte")
```

## 3. Analisis reproducible

``` r
ciudades <- leer_ciudades()
ciudades_resumen <- ciudades |>
  mutate(densidad = poblacion / superficie)

densidad_region <- ciudades_resumen |>
  group_by(region) |>
  summarise(promedio_densidad = mean(densidad, na.rm = TRUE))

ggplot(ciudades_resumen, aes(x = superficie, y = poblacion, color = region)) +
  geom_point()
```

## Conclusiones

En esta vineta vimos como acceder al dataset `ciudades`, usar las
funciones principales y hacer un analisis basico.
