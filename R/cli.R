#' Install the oefar CLI executable on the system
#'
#' @description
#' Installs the `oefar` command line interface tool on the system using
#' the \pkg{Rapp} package.
#'
#' @param destdir Optional character. Target directory where the executable will be installed.
#'   By default, uses the standard system executable directory.
#'
#' @return The absolute path of the installed executable (invisibly).
#' @export
#'
#' @examples
#' \dontrun{
#' install_oefar_cli()
#' }
install_oefar_cli <- function(destdir = NULL) {
  if (!requireNamespace("Rapp", quietly = TRUE)) {
    cli::cli_abort("El paquete {.pkg Rapp} es necesario para instalar la CLI. Por favor inst\u00e1lelo con {.code install.packages('Rapp')}.")
  }
  Rapp::install_pkg_cli_apps(package = "oefar", destdir = destdir)
}
