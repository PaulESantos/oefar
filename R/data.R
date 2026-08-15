#' Descargar y consultar datos de un conjunto de datos (datastream) de OEFA
#'
#' @description
#' Descarga los datos de un conjunto de datos (datastream) del portal de Datos Abiertos
#' del OEFA (Organismo de Evaluación y Fiscalización Ambiental) por su GUID y los
#' retorna en un objeto de clase \code{\link[tibble]{tibble}} con nombres de columnas limpios.
#' Permite ajustar el tiempo límite (timeout) de la descarga según el volumen de datos.
#'
#' @param guid Carácter. Identificador único global del datastream (ej. "DENUN-SINAD").
#' @param limit Entero opcional. Cantidad máxima de filas a descargar.
#' @param offset Entero opcional. Registro inicial para paginación.
#' @param pArgument0 Carácter opcional. Primer parámetro de filtro si el datastream es parametrizado por la API.
#' @param ... Parámetros adicionales para la consulta (ej. pArgument1, pArgument2).
#' @param format Carácter. Formato de descarga deseado: \code{"tibble"} (por defecto), \code{"csv"} o \code{"json"}.
#' @param clean_names Lógico. Si es \code{TRUE} (por defecto), convierte los nombres de las columnas a minúsculas con guiones bajos.
#' @param timeout Entero. Tiempo máximo de espera en segundos para la conexión HTTP (por defecto 60 segundos).
#' @param api_key Carácter. API Key de OEFA. Por defecto utiliza \code{oefa_get_api_key()}.
#'
#' @return Un \code{\link[tibble]{tibble}} con los registros del conjunto de datos.
#' @export
#'
#' @examples
#' \dontrun{
#' # Descargar denuncias SINADA con timeout de 120s
#' denuncias <- oefa_get_data(guid = "DENUN-SINAD", timeout = 120)
#' print(denuncias)
#' }
oefa_get_data <- function(guid, limit = NULL, offset = NULL, pArgument0 = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  if (missing(guid) || !is.character(guid) || nchar(trimws(guid)) == 0) {
    cli::cli_abort("Debe especificar un GUID de datastream valido.")
  }

  guid <- trimws(guid)
  format <- match.arg(format)

  q_params <- list(...)
  if (!is.null(limit)) q_params[["limit"]] <- as.integer(limit)
  if (!is.null(offset)) q_params[["offset"]] <- as.integer(offset)
  if (!is.null(pArgument0)) q_params[["pArgument0"]] <- pArgument0

  endpoint_json <- paste0("datastreams/", guid, "/data.json/")
  endpoint_csv <- paste0("datastreams/", guid, "/data.csv/")

  if (format == "csv") {
    res_csv <- oefa_api_request(endpoint_csv, query = q_params, timeout = timeout, api_key = api_key)
    return(httr2::resp_body_string(res_csv, encoding = "UTF-8"))
  }

  # Endpoint JSON es ultra rápido (paginado nativo)
  res_json <- tryCatch({
    oefa_api_request(endpoint_json, query = q_params, timeout = timeout, api_key = api_key)
  }, error = function(e) NULL)

  res_tbl <- NULL

  if (!is.null(res_json) && httr2::resp_status(res_json) == 200) {
    json_data <- parse_json_response(res_json)
    if (format == "json") return(json_data)

    df_json <- parse_junar_json_to_tibble(json_data)
    if (is.data.frame(df_json) && nrow(df_json) > 0) {
      res_tbl <- tibble::as_tibble(df_json)
    }
  }

  # Fallback a CSV si JSON no entrega tabla
  if (is.null(res_tbl)) {
    res_csv <- oefa_api_request(endpoint_csv, query = q_params, timeout = timeout, api_key = api_key)
    raw_csv <- httr2::resp_body_string(res_csv, encoding = "UTF-8")
    if (format == "json") return(jsonlite::fromJSON(raw_csv))

    df <- utils::read.csv(text = raw_csv, stringsAsFactors = FALSE, check.names = FALSE, encoding = "UTF-8")
    res_tbl <- tibble::as_tibble(df)
  }

  if (isTRUE(clean_names)) {
    colnames(res_tbl) <- clean_column_names(colnames(res_tbl))
  }

  res_tbl
}

#' Limpiar nombres de columnas a minusculas y guiones bajos
#'
#' @param names Vector de caracteres con los nombres originales de columnas
#' @return Vector de caracteres limpios
#' @keywords internal
clean_column_names <- function(names) {
  if (is.null(names) || length(names) == 0) return(names)
  cleaned <- iconv(names, to = "ASCII//TRANSLIT", sub = "")
  cleaned <- tolower(cleaned)
  cleaned <- gsub("[^a-z0-9_]+", "_", cleaned)
  cleaned <- gsub("_+", "_", cleaned)
  cleaned <- gsub("^_|_$", "", cleaned)

  cleaned[cleaned == ""] <- "var"
  make.unique(cleaned, sep = "_")
}

#' Parsear respuesta JSON de Junar en tibble
#'
#' @param json_data Lista resultado del parseo de data.json
#' @return Data frame / tibble
#' @keywords internal
parse_junar_json_to_tibble <- function(json_data) {
  if (is.null(json_data)) return(tibble::tibble())

  result_obj <- if (!is.null(json_data$result)) json_data$result else json_data
  if (is.null(result_obj)) return(tibble::tibble())

  f_array <- result_obj$fArray
  if (is.null(f_array) || length(f_array) == 0) return(tibble::tibble())

  if (is.data.frame(f_array)) {
    raw_hdr <- if ("fHeader" %in% names(f_array)) f_array$fHeader else rep(FALSE, nrow(f_array))
    is_hdr <- !is.na(raw_hdr) & as.logical(raw_hdr)

    vals <- if ("fStr" %in% names(f_array)) f_array$fStr else rep("", nrow(f_array))
    vals[is.na(vals)] <- ""

    hdr_idx <- which(is_hdr)
    if (length(hdr_idx) == 0) return(tibble::as_tibble(f_array))

    headers <- vals[hdr_idx]
    data_vals <- vals[!is_hdr]

    ncols <- length(headers)
    if (ncols == 0 || length(data_vals) == 0) return(tibble::tibble())

    nrows <- floor(length(data_vals) / ncols)
    if (nrows == 0) return(tibble::tibble())

    data_matrix <- matrix(data_vals[1:(nrows * ncols)], nrow = nrows, ncol = ncols, byrow = TRUE)
    colnames(data_matrix) <- headers

    return(tibble::as_tibble(data_matrix))
  }

  tibble::tibble()
}

#' @rdname oefa_get_data
#' @export
oefa_read_datastream <- oefa_get_data
