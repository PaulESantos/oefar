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

#' Constante para mapear simbolos micro/mu a 'u'
#'
#' @keywords internal
mu_to_u <- stats::setNames(
  rep("u", 10),
  nm = c(
    "\u00b5", "\u03bc", "\u3382", "\u338c", "\u338d",
    "\u3395", "\u339b", "\u33b2", "\u33b6", "\u33bc"
  )
)

#' Detectar los transliteradores disponibles para stri_trans_general
#'
#' @param wanted Los transliteradores deseados
#' @return Lista separada por punto y coma de los transliteradores disponibles
#' @noRd
available_transliterators <- function(wanted) {
  if (requireNamespace("stringi", quietly = TRUE)) {
    desired_available <- intersect(wanted, stringi::stri_trans_list())
    if (!identical(wanted, desired_available) && getOption("janitor_warn_transliterators", default = TRUE)) {
      warning(
        "Algunos transliteradores para convertir caracteres en nombres no estan disponibles en este sistema.\n",
        "Los resultados pueden diferir cuando se ejecuta en un sistema diferente.\n",
        "Los transliteradores faltantes son: ",
        paste0(setdiff(wanted, desired_available), collapse = ", "),
        "\n\nEsta advertencia solo se mostrara una vez por sesion.\n",
        "Para suprimirla use: options(janitor_warn_transliterators=FALSE)\n",
        call. = FALSE
      )
      options(janitor_warn_transliterators = FALSE)
    }
    paste(desired_available, collapse = ";")
  } else {
    "Latin-ASCII"
  }
}

#' Advertir si el simbolo micro o mu sera reemplazado al limpiar nombres
#'
#' @param string Vector de caracteres
#' @param replace Vector nombrado de reemplazo
#' @return TRUE si se emitió una advertencia o FALSE en caso contrario
#' @noRd
warn_micro_mu <- function(string, replace) {
  micro_mu <- names(mu_to_u)
  warning_characters <- character()
  warning_characters_specific <- character()

  for (current_unicode in micro_mu) {
    has_character <- any(grepl(x = string, pattern = current_unicode, fixed = TRUE))
    if (has_character) {
      has_replacement_general <- any(names(replace) %in% current_unicode)
      has_replacement_specific <- any(grepl(x = names(replace), pattern = current_unicode, fixed = TRUE))
      warning_characters <- c(
        warning_characters,
        current_unicode[!has_replacement_general & !has_replacement_specific]
      )
      warning_characters_specific <- c(
        warning_characters_specific,
        current_unicode[!has_replacement_general & has_replacement_specific]
      )
    }
  }

  warning_message_general <- NULL
  if (length(warning_characters) > 0) {
    warning_characters_utf <- sprintf("\\u%04x", sapply(X = warning_characters, FUN = utf8ToInt))
    warning_message_general <- sprintf(
      "Los siguientes caracteres estan en los nombres pero no se reemplazan: %s",
      paste(warning_characters_utf, collapse = ", ")
    )
  }

  warning_message_specific <- NULL
  if (length(warning_characters_specific) > 0) {
    warning_characters_utf <- sprintf("\\u%04x", sapply(X = warning_characters_specific, FUN = utf8ToInt))
    warning_message_specific <- sprintf(
      "Los siguientes caracteres estan en los nombres pero es posible que no se reemplacen completamente: %s",
      paste(warning_characters_utf, collapse = ", ")
    )
  }

  if (!is.null(warning_message_general) || !is.null(warning_message_specific)) {
    warning_message <- paste(c(warning_message_general, warning_message_specific), collapse = "\n")
    warning(
      "Atencion! El simbolo mu o micro esta en el texto de entrada y puede haberse convertido en 'm' cuando se esperaba 'u'. ",
      "Considere agregar `replace = mu_to_u` al argumento `replace`:\n",
      warning_message,
      call. = FALSE
    )
  }
  length(c(warning_characters, warning_characters_specific)) > 0
}



#' Fallback base R para cambio de formato de caso
#'
#' @param string Vector de caracteres
#' @param case Tipo de caso ("snake", "small_camel", "upper_camel", etc.)
#' @return Vector formateado
#' @noRd
fallback_to_any_case <- function(string, case = "snake") {
  res <- gsub("([a-z0-9])([A-Z])", "\\1_\\2", string)
  res <- gsub("([A-Z]+)([A-Z][a-z])", "\\1_\\2", res)
  res <- gsub("[^a-zA-Z0-9]+", "_", res)
  res <- tolower(res)
  res <- gsub("_+", "_", res)
  res <- gsub("^_|_$", "", res)
  res[res == ""] <- "var"

  if (case %in% c("small_camel", "lower_camel")) {
    res <- vapply(strsplit(res, "_"), function(parts) {
      if (length(parts) == 0) return("")
      parts[1] <- tolower(parts[1])
      if (length(parts) > 1) {
        substr(parts[-1], 1, 1) <- toupper(substr(parts[-1], 1, 1))
      }
      paste0(parts, collapse = "")
    }, FUN.VALUE = character(1))
  } else if (case %in% c("upper_camel", "big_camel")) {
    res <- vapply(strsplit(res, "_"), function(parts) {
      if (length(parts) == 0) return("")
      substr(parts, 1, 1) <- toupper(substr(parts, 1, 1))
      paste0(parts, collapse = "")
    }, FUN.VALUE = character(1))
  }
  res
}

#' Limpiar nombres de columnas o vectores de caracteres (inspirado en janitor::make_clean_names)
#'
#' @description
#' Limpia un vector de caracteres o un data.frame garantizando nombres unicos,
#' transliteración ASCII de acentos (ej. español/latín), eliminación de comillas,
#' conversión de caracteres como \% y # a texto, y formateo según el formato de caso deseado.
#'
#' @param string Vector de caracteres con nombres o un data.frame.
#' @param case El caso de destino deseado (por defecto es `"snake"`).
#' @param replace Vector de caracteres nombrado donde la clave se reemplaza por el valor.
#'   Por defecto \code{c("'" = "", "\"" = "", "\%" = "_percent_", "#" = "_number_")}.
#' @param ascii Convertir los nombres a ASCII (\code{TRUE}, por defecto) o no (\code{FALSE}).
#' @param use_make_names ¿Aplicar \code{make.names()} para asegurar nombres validos de R? (\code{TRUE}, por defecto).
#' @param allow_dupes Permitir duplicados en los nombres retornados (\code{FALSE}, por defecto).
#' @param sep_in Separador de entrada para cambio de caso (por defecto \code{"\\\\."}).
#' @param transliterations Especificacion de transliteraciones (por defecto \code{"Latin-ASCII"}).
#' @param parsing_option Opcion de parseo (por defecto 1).
#' @param numerals Tratamiento de numerales (por defecto \code{"asis"}).
#' @param ... Argumentos adicionales pasados a \code{snakecase::to_any_case()} si esta instalado.
#'
#' @return Regresa un vector de caracteres limpio o un data.frame con nombres de columna limpios.
#' @keywords internal
#' @export
clean_column_names <- function(string,
                               case = "snake",
                               replace = c(
                                 "'" = "",
                                 "\"" = "",
                                 "%" = "_percent_",
                                 "#" = "_number_"
                               ),
                               ascii = TRUE,
                               use_make_names = TRUE,
                               allow_dupes = FALSE,
                               sep_in = "\\.",
                               transliterations = "Latin-ASCII",
                               parsing_option = 1,
                               numerals = "asis",
                               ...) {
  # Si el argumento principal se pasa a un data.frame, limpiar sus columnas y retornarlo
  if (is.data.frame(string)) {
    colnames(string) <- clean_column_names(
      colnames(string),
      case = case,
      replace = replace,
      ascii = ascii,
      use_make_names = use_make_names,
      allow_dupes = allow_dupes,
      sep_in = sep_in,
      transliterations = transliterations,
      parsing_option = parsing_option,
      numerals = numerals,
      ...
    )
    return(string)
  }

  if (is.null(string) || length(string) == 0) {
    return(string)
  }



  warn_micro_mu(string = string, replace = replace)

  # 1. Reemplazar patrones especificados en `replace`
  replaced_names <- string
  if (length(replace) > 0 && !is.null(names(replace))) {
    if (requireNamespace("stringr", quietly = TRUE)) {
      replaced_names <- stringr::str_replace_all(string = string, pattern = replace)
    } else {
      for (pat in names(replace)) {
        replaced_names <- gsub(pat, replace[[pat]], replaced_names, fixed = TRUE)
      }
    }
  }

  # 2. Transliteración a ASCII
  transliterated_names <- if (isTRUE(ascii)) {
    if (requireNamespace("stringi", quietly = TRUE)) {
      stringi::stri_trans_general(
        replaced_names,
        id = available_transliterators(c("Any-Latin", "Greek-Latin", "Any-NFKD", "Any-NFC", "Latin-ASCII"))
      )
    } else {
      # Fallback base R para transliteración (especialmente acentos en español)
      res <- iconv(replaced_names, to = "ASCII//TRANSLIT", sub = "")
      res <- chartr("\u00e1\u00e9\u00ed\u00f3\u00fa\u00c1\u00c9\u00cd\u00d3\u00da\u00f1\u00d1\u00fc\u00dc", "aeiouAEIOUnNuU", res)
      res
    }
  } else {
    replaced_names
  }

  # 3. Remover espacios y puntuación iniciales
  good_start <- if (requireNamespace("stringr", quietly = TRUE)) {
    stringr::str_replace(
      string = transliterated_names,
      pattern = "\\A[\\h\\s\\p{Punctuation}\\p{Symbol}\\p{Separator}\\p{Other}]*(.*)$",
      replacement = "\\1"
    )
  } else {
    gsub("^[^[:alnum:]]+", "", transliterated_names, perl = TRUE)
  }

  # 4. Convertir espacios intermedios y puntuación a puntos
  cleaned_within <- if (requireNamespace("stringr", quietly = TRUE)) {
    stringr::str_replace_all(
      string = good_start,
      pattern = "[\\h\\s\\p{Punctuation}\\p{Symbol}\\p{Separator}\\p{Other}]+",
      replacement = "."
    )
  } else {
    gsub("[^[:alnum:]]+", ".", good_start, perl = TRUE)
  }

  # 5. Aplicar make.names()
  made_names <- if (isTRUE(use_make_names)) {
    make.names(cleaned_within)
  } else {
    cleaned_within
  }

  # 6. Aplicar casing (snakecase si está instalado, de lo contrario fallback base R)
  cased_names <- if (requireNamespace("snakecase", quietly = TRUE)) {
    snakecase::to_any_case(
      made_names,
      case = case,
      sep_in = sep_in,
      transliterations = transliterations,
      parsing_option = parsing_option,
      numerals = numerals,
      ...
    )
  } else {
    fallback_to_any_case(made_names, case = case)
  }

  # 7. Resolver nombres duplicados agregando sufijos numéricos (_2, _3, ...)
  if (!isTRUE(allow_dupes)) {
    while (any(duplicated(cased_names))) {
      dupe_count <- vapply(
        seq_along(cased_names), function(i) {
          sum(cased_names[i] == cased_names[1:i])
        },
        1L
      )

      cased_names[dupe_count > 1] <- paste(
        cased_names[dupe_count > 1],
        dupe_count[dupe_count > 1],
        sep = "_"
      )
    }
  }

  cased_names
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
