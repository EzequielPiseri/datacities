#' Filtrar ciudades por region
#'
#' Esta funcion filtra el dataset interno `ciudades` segun la region
#' seleccionada. Las regiones validas son: "norte", "centro" y "sur".
#'
#' @param region Cadena de texto indicando la region.
#'
#' @return Un tibble con las ciudades pertenecientes a la region indicada.
#'
#' @examples
#' filtrar_region("norte")
#'
#' # Region invalida (genera error)
#' \dontrun{
#' filtrar_region("patagonia")
#' }
#'
#' @export
filtrar_region <- function(region) {

  regiones_validas <- c("norte", "centro", "sur")

  # validar que sea texto de longitud 1
  if (!is.character(region) || length(region) != 1) {
    cli::cli_abort("El argumento `region` debe ser texto de longitud 1.")
  }

  # validar que sea una region permitida
  if (!(region %in% regiones_validas)) {
    cli::cli_abort("Region invalida. Las regiones validas son: 'norte', 'centro', 'sur'.")
  }

  # filtrar dataset
  ciudades |>
    dplyr::filter(region == !!region) |>
    tibble::as_tibble()
}
