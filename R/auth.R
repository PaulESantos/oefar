#' Configurar y consultar la API Key de OEFA
#'
#' @description
#' Obtiene, configura o verifica la presencia de la clave de API (API Key) necesaria
#' para interactuar con el portal de Datos Abiertos del OEFA (Organismo de Evaluación
#' y Fiscalización Ambiental de Perú).
#'
#' @param api_key Carácter. La API Key personal provista por el portal de Datos Abiertos de OEFA.
#' @param install Lógico. Si es \code{TRUE}, guarda la API Key de forma permanente en el archivo \code{.Renviron} del usuario. Por defecto es \code{FALSE}.
#'
#' @return
#' - \code{oefa_get_api_key()}: Retorna la API Key activa como cadena de caracteres. Si no está configurada, lanza un error informativo.
#' - \code{oefa_set_api_key()}: Retorna de forma invisible la API Key configurada.
#' - \code{oefa_has_api_key()}: Retorna \code{TRUE} si existe una API Key configurada, de lo contrario \code{FALSE}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' oefa_set_api_key("tu_api_key_aqui")
#' oefa_has_api_key()
#' key <- oefa_get_api_key()
#' }
oefa_set_api_key <- function(api_key, install = FALSE) {
  if (missing(api_key) || !is.character(api_key) || nchar(trimws(api_key)) == 0) {
    cli::cli_abort("Debe proporcionar una API Key valida como cadena de caracteres.")
  }

  clean_key <- trimws(api_key)
  Sys.setenv(OEFA_API_KEY = clean_key)
  options(oefa.api_key = clean_key)

  if (isTRUE(install)) {
    renviron_path <- file.path(Sys.getenv("HOME"), ".Renviron")
    key_line <- paste0("OEFA_API_KEY=", clean_key)

    if (file.exists(renviron_path)) {
      lines <- readLines(renviron_path, warn = FALSE)
      lines <- lines[!grepl("^OEFA_API_KEY=", lines)]
      lines <- c(lines, key_line)
      writeLines(lines, renviron_path)
    } else {
      writeLines(key_line, renviron_path)
    }

    cli::cli_alert_success("API Key guardada permanentemente en {.file {renviron_path}}.")
  } else {
    cli::cli_alert_success("API Key configurada para la sesion actual de R.")
  }

  invisible(clean_key)
}

#' @rdname oefa_set_api_key
#' @export
oefa_get_api_key <- function() {
  key <- Sys.getenv("OEFA_API_KEY")
  if (nchar(key) == 0) {
    key <- getOption("oefa.api_key", default = "")
  }

  if (nchar(key) == 0) {
    cli::cli_abort(c(
      "x" = "No se ha encontrado la API Key de OEFA.",
      "i" = "Configure su API Key ejecutando: {.code oefa_set_api_key('TU_API_KEY')}",
      "i" = "O agregue {.code OEFA_API_KEY='TU_API_KEY'} en su archivo {.file .Renviron}.",
      "i" = "Puede solicitar una API Key en {.url https://datosabiertos.oefa.gob.pe/}"
    ))
  }

  key
}

#' @rdname oefa_set_api_key
#' @export
oefa_has_api_key <- function() {
  key <- tryCatch(oefa_get_api_key(), error = function(e) "")
  nchar(key) > 0
}

#' @rdname oefa_set_api_key
#' @export
set_oefa_api_key <- oefa_set_api_key

#' @rdname oefa_set_api_key
#' @export
has_oefa_api_key <- oefa_has_api_key

#' @rdname oefa_set_api_key
#' @export
oefa_api_key <- oefa_get_api_key

