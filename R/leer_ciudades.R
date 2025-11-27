#' Leer ciudades desde los datos internos
#'
#' Esta funcion devuelve el dataset interno \code{ciudades} como un tibble.
#' El dataset es cargado automaticamente desde la carpeta \code{data/}
#' cuando el paquete es cargado.
#'
#' @return Un tibble con los datos del dataset \code{ciudades}.
#'
#' @examples
#' # Devuelve el dataset de ciudades
#' leer_ciudades()
#'
#' @export
leer_ciudades <- function() {
  tibble::as_tibble(ciudades)
}
