#' Download and query data from an OEFA dataset (datastream)
#'
#' @description
#' Downloads data from a dataset (datastream) on the OEFA (Environmental Evaluation
#' and Enforcement Agency of Peru) Open Data portal using its GUID and returns it as a
#' \code{\link[tibble]{tibble}} object with cleaned column names.
#' Allows adjusting the download timeout according to data volume.
#'
#' @param guid Character. Unique global identifier of the datastream (e.g., "DENUN-SINAD").
#' @param limit Optional integer. Maximum number of rows to download.
#' @param offset Optional integer. Initial record offset for pagination.
#' @param pArgument0 Optional character. First filter parameter if the datastream is parameterized by the API.
#' @param ... Additional query parameters (e.g., pArgument1, pArgument2).
#' @param format Character. Desired download format: \code{"tibble"} (default), \code{"csv"}, or \code{"json"}.
#' @param clean_names Logical. If \code{TRUE} (default), converts column names to lowercase snake_case.
#' @param timeout Integer. Maximum wait time in seconds for HTTP connection (default 60 seconds).
#' @param api_key Character. OEFA API Key. Defaults to \code{oefa_get_api_key()}.
#'
#' @return A \code{\link[tibble]{tibble}} containing dataset records.
#' @export
#'
#' @examples
#' \dontrun{
#' # Download SINADA complaints with a 120s timeout
#' complaints <- oefa_get_data(guid = "DENUN-SINAD", timeout = 120)
#' print(complaints)
#' }
oefa_get_data <- function(guid, limit = NULL, offset = NULL, pArgument0 = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  if (missing(guid) || !is.character(guid) || nchar(trimws(guid)) == 0) {
    cli::cli_abort("{.arg guid} debe ser un identificador de datastream v\u00e1lido (ej. {.val DENUN-SINAD}).")
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

#' Constante para mapear símbolos micro/mu a 'u'
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
      cli::cli_warn(c(
        "!" = "Algunos transliteradores para convertir caracteres en nombres no est\u00e1n disponibles en este sistema.",
        "i" = "Los resultados pueden diferir cuando se ejecuta en un sistema diferente.",
        "i" = "Transliteradores faltantes: {.val {setdiff(wanted, desired_available)}}.",
        "i" = "Para suprimir esta advertencia use: {.code options(janitor_warn_transliterators = FALSE)}"
      ))
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

  warning_bullets <- character()
  if (length(warning_characters) > 0) {
    warning_characters_utf <- sprintf("\\u%04x", sapply(X = warning_characters, FUN = utf8ToInt))
    warning_bullets <- c(warning_bullets, "!" = sprintf("Caracteres no reemplazados: %s", paste(warning_characters_utf, collapse = ", ")))
  }

  if (length(warning_characters_specific) > 0) {
    warning_characters_utf <- sprintf("\\u%04x", sapply(X = warning_characters_specific, FUN = utf8ToInt))
    warning_bullets <- c(warning_bullets, "!" = sprintf("Caracteres con reemplazo incompleto: %s", paste(warning_characters_utf, collapse = ", ")))
  }

  if (length(warning_bullets) > 0) {
    cli::cli_warn(c(
      "!" = "El s\u00edmbolo mu o micro est\u00e1 en el texto de entrada y puede haberse convertido en {.val m} en lugar de {.val u}.",
      "i" = "Considere agregar {.code replace = mu_to_u} al argumento {.arg replace}.",
      warning_bullets
    ))
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

#' Clean column names or character vectors (inspired by janitor::make_clean_names)
#'
#' @description
#' Cleans a character vector or data.frame ensuring unique names,
#' ASCII transliteration of accents (e.g., Spanish/Latin), removal of quotes,
#' conversion of characters such as \% and # to text, and formatting according to the desired case format.
#'
#' @param string Character vector with names or a data.frame.
#' @param case Desired target case format (default is `"snake"`).
#' @param replace Named character vector where key is replaced by value.
#'   Default \code{c("'" = "", "\"" = "", "\%" = "_percent_", "#" = "_number_")}.
#' @param ascii Convert names to ASCII (\code{TRUE}, default) or not (\code{FALSE}).
#' @param use_make_names Whether to apply \code{make.names()} to ensure valid R names (\code{TRUE}, default).
#' @param allow_dupes Allow duplicate names in returned output (\code{FALSE}, default).
#' @param sep_in Input separator for case conversion (default \code{"\\\\."}).
#' @param transliterations Specification of transliterations (default \code{"Latin-ASCII"}).
#' @param parsing_option Parsing option (default 1).
#' @param numerals Handling of numerals (default \code{"asis"}).
#' @param ... Additional arguments passed to \code{snakecase::to_any_case()} if installed.
#'
#' @return Returns a clean character vector or a data.frame with cleaned column names.
#' @keywords internal
#' @export
#'
#' @examples
#' clean_column_names(c("CÓDIGO ÚNICO", "N° Expediente", "Tasa %"))
#'
#' df <- data.frame(`Área Total` = 1:5, `N° Casos` = 6:10, check.names = FALSE)
#' clean_column_names(df)
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
