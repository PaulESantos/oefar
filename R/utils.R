# Base URL for OEFA Open Data portal
OEFA_BASE_URL <- "https://api.datosabiertos.oefa.gob.pe/api/v2/"
OEFA_BASE_URL_HTTP <- "http://api.datosabiertos.oefa.gob.pe/api/v2/"

#' Perform HTTP requests to the OEFA API
#'
#' Internal helper to build and execute HTTP requests to the endpoints
#' of the OEFA Open Data v2 API using httr2.
#'
#' @param endpoint Relative path of the endpoint (e.g., "datastreams/").
#' @param query List of query parameters.
#' @param timeout Integer. Maximum wait time in seconds for the HTTP request (default 60).
#' @param api_key API Key authentication string.
#'
#' @return An httr2_response object.
#' @keywords internal
oefa_api_request <- function(endpoint, query = list(), timeout = 60, api_key = oefa_get_api_key()) {
  if (is.null(api_key) || nchar(api_key) == 0) {
    api_key <- oefa_get_api_key()
  }

  query[["auth_key"]] <- api_key

  # Build full URL
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
    # Retry with HTTP if HTTPS encounters issues
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
        "x" = "Error al conectar con la API de Datos Abiertos de OEFA.",
        "i" = "Mensaje del sistema: {e$message}",
        "i" = "Puede incrementar el tiempo de espera especificando el argumento {.code timeout = 120}."
      ))
    })
  })

  status <- httr2::resp_status(res)
  if (status >= 400) {
    msg <- tryCatch({
      body <- jsonlite::fromJSON(httr2::resp_body_string(res))
      if (!is.null(body$error)) body$error else paste("C\u00f3digo HTTP", status)
    }, error = function(e) paste("C\u00f3digo HTTP", status))

    extra_msg <- if (status == 500) {
      c("i" = "El servidor de OEFA respondi\u00f3 con un error interno (HTTP 500) para este conjunto de datos.",
        "i" = "Verifique si el GUID ha cambiado consultando el cat\u00e1logo con: {.code oefa_list_datastreams()}")
    } else NULL

    cli::cli_abort(c(
      "x" = "La API de OEFA respondi\u00f3 con un error (HTTP {status}).",
      "i" = "Detalle: {msg}",
      extra_msg
    ))
  }

  res
}

#' Parse JSON response to tibble or list
#'
#' @param res httr2_response object
#' @return Parsed object (tibble or list)
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
