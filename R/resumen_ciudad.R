#' Resumen de una ciudad
#'
#' Devuelve un resumen con poblacion, superficie y densidad
#' para la ciudad indicada.
#'
#' @param nombre_ciudad Nombre de la ciudad (texto).
#'
#' @return Tibble de una fila con ciudad, poblacion, superficie y densidad.
#'
#' @export
resumen_ciudad <- function(nombre_ciudad) {

  # validar input
  if (!is.character(nombre_ciudad) || length(nombre_ciudad) != 1) {
    cli::cli_abort("El argumento `nombre_ciudad` debe ser texto de longitud 1.")
  }

  # filtrar ciudad
  df <- ciudades |>
    dplyr::filter(nombre == nombre_ciudad)

  # si no existe → error
  if (nrow(df) == 0) {
    cli::cli_abort("La ciudad `{nombre_ciudad}` no existe en el dataset.")
  }

  # calcular densidad
  densidad <- df$poblacion / df$superficie_km2

  # devolver una fila
  tibble::tibble(
    ciudad = nombre_ciudad,
    poblacion = df$poblacion,
    superficie = df$superficie_km2,
    densidad = densidad
  )
}
