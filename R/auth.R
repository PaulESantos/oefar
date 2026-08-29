#' Configure and query the OEFA API Key
#'
#' @description
#' Get, set, or check the presence of the API Key required
#' to interact with the OEFA (Environmental Evaluation and Enforcement Agency of Peru)
#' Open Data portal. The API Key can be created at the developer portal:
#' \url{https://datosabiertos.oefa.gob.pe/developers/}.
#'
#' @param api_key Character. Personal API Key obtained from \url{https://datosabiertos.oefa.gob.pe/developers/}.
#' @param install Logical. If \code{TRUE}, saves the API Key permanently in the user's \code{.Renviron} file. Default is \code{FALSE}.
#'
#' @return
#' - \code{oefa_get_api_key()}: Returns the active API Key as a character string. If not set, raises an informative error.
#' - \code{oefa_set_api_key()}: Invisibly returns the configured API Key.
#' - \code{oefa_has_api_key()}: Returns \code{TRUE} if an API Key is configured, otherwise \code{FALSE}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' oefa_set_api_key("your_api_key_here")
#' oefa_has_api_key()
#' key <- oefa_get_api_key()
#' }
oefa_set_api_key <- function(api_key, install = FALSE) {
  if (missing(api_key) || !is.character(api_key) || nchar(trimws(api_key)) == 0) {
    cli::cli_abort("{.arg api_key} debe ser una cadena de caracteres no vac\u00eda.")
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
      "i" = "Puede crear su API Key en {.url https://datosabiertos.oefa.gob.pe/developers/}"
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

