#' Instalar el ejecutable CLI de oefar en el sistema
#'
#' @description
#' Instala la herramienta de línea de comandos `oefar` en el sistema utilizando
#' el paquete \pkg{Rapp}.
#'
#' @param destdir Carácter opcional. Directorio destino donde se instalará el ejecutable.
#'   Por defecto utiliza el directorio estándar de ejecutables del sistema.
#'
#' @return La ruta absoluta del ejecutable instalado (de forma invisible).
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
