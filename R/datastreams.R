#' List the OEFA dataset (datastream) catalog
#'
#' @description
#' Retrieves the catalog of datasets (datastreams) available on the OEFA (Environmental
#' Evaluation and Enforcement Agency of Peru) Open Data portal.
#'
#' @param category Optional character. Filter datasets by category name or ID.
#' @param query Optional character. Filter by search keyword in title or description.
#' @param limit Optional integer. Maximum number of records to return.
#' @param offset Optional integer. Initial offset for pagination.
#' @param api_key Character. OEFA API Key. Defaults to \code{oefa_get_api_key()}.
#'
#' @return A structured \code{\link[tibble]{tibble}} with datastream metadata:
#' \itemize{
#'   \item \code{guid}: Unique dataset identifier.
#'   \item \code{title}: Title of the dataset.
#'   \item \code{description}: Detailed description of the dataset.
#'   \item \code{category_name}: Name of the thematic category.
#'   \item \code{category_id}: Identifier of the category.
#'   \item \code{created_at}: Creation date (Unix timestamp or formatted).
#'   \item \code{modified_at}: Last modification date.
#'   \item \code{link}: Direct link on the web portal.
#' }
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # List all datastreams
#' catalog <- oefa_list_datastreams()
#' head(catalog)
#'
#' # Search datastreams about environmental complaints
#' complaints_ds <- oefa_list_datastreams(query = "denuncias")
#' }
oefa_list_datastreams <- function(category = NULL, query = NULL, limit = NULL, offset = NULL, api_key = oefa_get_api_key()) {
  q_params <- list()

  if (!is.null(limit)) q_params[["limit"]] <- as.integer(limit)
  if (!is.null(offset)) q_params[["offset"]] <- as.integer(offset)
  if (!is.null(query) && nchar(trimws(query)) > 0) q_params[["query"]] <- trimws(query)

  res <- oefa_api_request("datastreams/", query = q_params, api_key = api_key)
  data <- parse_json_response(res)

  if (!is.data.frame(data) || nrow(data) == 0) {
    cli::cli_alert_info("No se encontraron conjuntos de datos con los criterios especificados.")
    return(tibble::tibble(
      guid = character(),
      title = character(),
      description = character(),
      category_name = character(),
      category_id = character(),
      created_at = numeric(),
      modified_at = numeric(),
      link = character()
    ))
  }

  df <- tibble::as_tibble(data)

  # Filtrar por categoría si fue provista
  if (!is.null(category) && nchar(trimws(category)) > 0) {
    cat_target <- tolower(trimws(category))
    if ("category_name" %in% names(df)) {
      df <- df[tolower(df$category_name) %in% cat_target | grepl(cat_target, tolower(df$category_name), fixed = TRUE) | df$category_id == category, ]
    }
  }

  # Filtrar por query localmente si la API no aplico filtro
  if (!is.null(query) && nchar(trimws(query)) > 0 && nrow(df) > 0) {
    q_target <- tolower(trimws(query))
    match_title <- if ("title" %in% names(df)) grepl(q_target, tolower(df$title), fixed = TRUE) else FALSE
    match_desc <- if ("description" %in% names(df)) grepl(q_target, tolower(df$description), fixed = TRUE) else FALSE
    match_guid <- if ("guid" %in% names(df)) grepl(q_target, tolower(df$guid), fixed = TRUE) else FALSE
    df <- df[match_title | match_desc | match_guid, ]
  }

  # Seleccionar campos principales si existen
  cols_interest <- c("guid", "title", "description", "category_name", "category_id", "created_at", "modified_at", "link")
  existing_cols <- intersect(cols_interest, names(df))
  remaining_cols <- setdiff(names(df), existing_cols)

  df <- df[, c(existing_cols, remaining_cols)]

  df
}

#' Get detailed metadata for a specific datastream
#'
#' @param guid Character. The GUID (unique identifier) of the datastream (e.g., "DENUN-SINAD").
#' @param api_key Character. OEFA API Key.
#'
#' @return A list or tibble containing complete metadata for the datastream.
#' @export
#'
#' @examples
#' \dontrun{
#' info <- oefa_get_datastream_info("DENUN-SINAD")
#' }
oefa_get_datastream_info <- function(guid, api_key = oefa_get_api_key()) {
  if (missing(guid) || !is.character(guid) || nchar(trimws(guid)) == 0) {
    cli::cli_abort("{.arg guid} debe ser una cadena de texto no vac\u00eda con el identificador del datastream.")
  }

  endpoint <- paste0("datastreams/", trimws(guid), "/")
  res <- oefa_api_request(endpoint, api_key = api_key)
  data <- parse_json_response(res)

  if (is.data.frame(data)) {
    tibble::as_tibble(data)
  } else {
    data
  }
}

#' Search datasets on the OEFA portal
#'
#' @param query Character. Search query term (e.g., "denuncias", "fiscalizacion", "supervision").
#' @param api_key Character. OEFA API Key.
#'
#' @return A \code{\link[tibble]{tibble}} with matching datasets.
#' @export
#'
#' @examples
#' \dontrun{
#' res <- oefa_search_datastreams("monitoreo")
#' }
oefa_search_datastreams <- function(query, api_key = oefa_get_api_key()) {
  if (missing(query) || !is.character(query) || nchar(trimws(query)) == 0) {
    cli::cli_abort("{.arg query} debe ser una palabra o frase de b\u00fasqueda v\u00e1lida.")
  }

  oefa_list_datastreams(query = query, api_key = api_key)
}

#' List thematic data categories from OEFA
#'
#' @param api_key Character. OEFA API Key.
#'
#' @return A \code{\link[tibble]{tibble}} with available categories and total count of datastreams per category.
#' @export
#'
#' @examples
#' \dontrun{
#' cats <- oefa_list_categories()
#' }
oefa_list_categories <- function(api_key = oefa_get_api_key()) {
  ds <- oefa_list_datastreams(api_key = api_key)

  if (nrow(ds) == 0 || !"category_name" %in% names(ds)) {
    return(tibble::tibble(category_id = character(), category_name = character(), total_datastreams = integer()))
  }

  res <- dplyr::count(ds, .data$category_id, .data$category_name, name = "total_datastreams")
  tibble::as_tibble(res)
}


#' @rdname oefa_list_datastreams
#' @export
oefa_list_datasets <- oefa_list_datastreams

#' @rdname oefa_get_datastream_info
#' @export
oefa_get_dataset_info <- oefa_get_datastream_info

#' @rdname oefa_list_categories
#' @export
oefa_list_topics <- oefa_list_categories

