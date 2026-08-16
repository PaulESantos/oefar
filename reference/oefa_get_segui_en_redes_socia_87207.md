# Descargar dataset: Seguidores en redes sociales 2

Descarga los datos del conjunto de datos 'Seguidores en redes sociales
2' del OEFA por su GUID (SEGUI-EN-REDES-SOCIA-87207). Pertenece a la
sección del Diccionario de Datos: Información Institucional \>
Interacción en redes sociales.

## Usage

``` r
oefa_get_segui_en_redes_socia_87207(
  limit = NULL,
  offset = NULL,
  ...,
  format = c("tibble", "csv", "json"),
  clean_names = TRUE,
  timeout = 60,
  api_key = oefa_get_api_key()
)
```

## Arguments

- limit:

  Entero opcional. Cantidad máxima de filas a descargar.

- offset:

  Entero opcional. Registro inicial para paginación.

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
los registros del dataset.

## Details

Estructura principal de campos según el Diccionario de Datos Oficial del
OEFA:

- MES:

  Detalla El Mes En El Que Incorporan Nuevos Seguidores A Las Redes
  Sociales \[Cadena De Texto\]

- RED_SOCI:

  Indica En Qué Red Social Se Suman Nuevos Seguidores \[Cadena De
  Texto\]

- SEGUIDOR:

  Indica La Cantidad De Nuevos Seguidores \[Entero\]
