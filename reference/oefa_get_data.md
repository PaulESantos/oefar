# Descargar y consultar datos de un conjunto de datos (datastream) de OEFA

Descarga los datos de un conjunto de datos (datastream) del portal de
Datos Abiertos del OEFA (Organismo de Evaluación y Fiscalización
Ambiental) por su GUID y los retorna en un objeto de clase
[`tibble`](https://tibble.tidyverse.org/reference/tibble.html) con
nombres de columnas limpios. Permite ajustar el tiempo límite (timeout)
de la descarga según el volumen de datos.

## Usage

``` r
oefa_get_data(
  guid,
  limit = NULL,
  offset = NULL,
  pArgument0 = NULL,
  ...,
  format = c("tibble", "csv", "json"),
  clean_names = TRUE,
  timeout = 60,
  api_key = oefa_get_api_key()
)

oefa_read_datastream(
  guid,
  limit = NULL,
  offset = NULL,
  pArgument0 = NULL,
  ...,
  format = c("tibble", "csv", "json"),
  clean_names = TRUE,
  timeout = 60,
  api_key = oefa_get_api_key()
)
```

## Arguments

- guid:

  Carácter. Identificador único global del datastream (ej.
  "DENUN-SINAD").

- limit:

  Entero opcional. Cantidad máxima de filas a descargar.

- offset:

  Entero opcional. Registro inicial para paginación.

- pArgument0:

  Carácter opcional. Primer parámetro de filtro si el datastream es
  parametrizado por la API.

- ...:

  Parámetros adicionales para la consulta (ej. pArgument1, pArgument2).

- format:

  Carácter. Formato de descarga deseado: `"tibble"` (por defecto),
  `"csv"` o `"json"`.

- clean_names:

  Lógico. Si es `TRUE` (por defecto), convierte los nombres de las
  columnas a minúsculas con guiones bajos.

- timeout:

  Entero. Tiempo máximo de espera en segundos para la conexión HTTP (por
  defecto 60 segundos).

- api_key:

  Carácter. API Key de OEFA. Por defecto utiliza
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

Un [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) con
los registros del conjunto de datos.

## Examples

``` r
if (FALSE) { # \dontrun{
# Descargar denuncias SINADA con timeout de 120s
denuncias <- oefa_get_data(guid = "DENUN-SINAD", timeout = 120)
print(denuncias)
} # }
```
