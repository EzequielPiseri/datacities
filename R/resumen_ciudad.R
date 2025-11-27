#' Resumen de una ciudad
#'
#' Esta función devuelve un resumen con la poblacin, superficie y
#' densidad poblacional de una ciudad especifica.
#'
#' @param nombre_ciudad Cadena de texto con el nombre de la ciudad.
#'
#' @return Un tibble de una fila con columnas: ciudad, poblacion,
#' superficie y densidad.
#'
#' @examples
#' # Ciudad valida
#' resumen_ciudad("Rosario")
#'
#' # Ciudad inexistente (generara error)
#' \dontrun{
#' resumen_ciudad("Atlantis")
#' }
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
  densidad <- df$poblacion / df$superficie

  # devolver tibble de una fila
  tibble::tibble(
    ciudad = nombre_ciudad,
    poblacion = df$poblacion,
    superficie = df$superficie,
    densidad = densidad
  )
}
