# URL base del portal de Datos Abiertos de OEFA
OEFA_BASE_URL <- "https://api.datosabiertos.oefa.gob.pe/api/v2/"
OEFA_BASE_URL_HTTP <- "http://api.datosabiertos.oefa.gob.pe/api/v2/"

#' Realizar peticiones HTTP a la API de OEFA
#'
#' Helper interno para construir y ejecutar solicitudes HTTP hacia los endpoints
#' de la API v2 de Datos Abiertos del OEFA utilizando httr2.
#'
#' @param endpoint Ruta relativa del endpoint (ej. "datastreams/").
#' @param query Lista de parametros de consulta (query parameters).
#' @param timeout Entero. Tiempo maximo de espera en segundos para la peticion HTTP (por defecto 60).
#' @param api_key Clave de autenticacion API Key.
#'
#' @return Objeto httr2_response.
#' @keywords internal
oefa_api_request <- function(endpoint, query = list(), timeout = 60, api_key = oefa_get_api_key()) {
  if (is.null(api_key) || nchar(api_key) == 0) {
    api_key <- oefa_get_api_key()
  }

  query[["auth_key"]] <- api_key

  # Construir URL completa
  endpoint <- gsub("^/", "", endpoint)
  url <- paste0(OEFA_BASE_URL, endpoint)

  timeout_sec <- if (!is.null(timeout) && is.numeric(timeout) && timeout > 0) timeout else getOption("oefa.timeout", default = 60)

  req <- httr2::request(url) |>
    httr2::req_url_query(!!!query) |>
    httr2::req_user_agent("oefar (R package; https://datosabiertos.oefa.gob.pe/)") |>
    httr2::req_timeout(timeout_sec) |>
    httr2::req_error(is_error = function(resp) FALSE)

  res <- tryCatch({
    httr2::req_perform(req)
  }, error = function(e) {
    # Reintento con HTTP si HTTPS presenta inconvenientes
    url_http <- paste0(OEFA_BASE_URL_HTTP, endpoint)
    req_http <- httr2::request(url_http) |>
      httr2::req_url_query(!!!query) |>
      httr2::req_user_agent("oefar (R package)") |>
      httr2::req_timeout(timeout_sec) |>
      httr2::req_error(is_error = function(resp) FALSE)

    tryCatch({
      httr2::req_perform(req_http)
    }, error = function(e_http) {
      cli::cli_abort(c(
        "x" = "Error al conectar con la API de OEFA.",
        "i" = "Mensaje de error: {e$message}",
        "i" = "Puede aumentar el tiempo limite especificando el parametro {.code timeout = 120} en la funcion."
      ))
    })
  })

  status <- httr2::resp_status(res)
  if (status >= 400) {
    msg <- tryCatch({
      body <- jsonlite::fromJSON(httr2::resp_body_string(res))
      if (!is.null(body$error)) body$error else paste("Codigo HTTP", status)
    }, error = function(e) paste("Codigo HTTP", status))

    extra_msg <- if (status == 500) {
      c("i" = "El servidor del OEFA respondio con un error interno (500) para este conjunto de datos remoto.",
        "i" = "Verifique si el dataset ha cambiado de GUID consultando el catalogo activo con: {.code oefa_list_datastreams()}")
    } else NULL

    cli::cli_abort(c(
      "x" = "La API de OEFA respondio con un error (HTTP {status}).",
      "i" = "Detalle: {msg}",
      extra_msg
    ))
  }

  res
}

#' Parsear respuesta JSON a tibble o lista
#'
#' @param res Objeto httr2_response
#' @return Objeto parseado (tibble o list)
#' @keywords internal
parse_json_response <- function(res) {
  text <- httr2::resp_body_string(res, encoding = "UTF-8")
  if (nchar(trimws(text)) == 0) {
    return(tibble::tibble())
  }
  parsed <- jsonlite::fromJSON(text, simplifyDataFrame = TRUE, flatten = TRUE)

  if (is.list(parsed) && !is.data.frame(parsed) && !is.null(parsed$results)) {
    return(parsed$results)
  }

  parsed
}
