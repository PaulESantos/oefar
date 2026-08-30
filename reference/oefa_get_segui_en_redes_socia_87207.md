# Download dataset: Seguidores en redes sociales 2

Downloads data for dataset 'Seguidores en redes sociales 2' from OEFA by
its GUID (SEGUI-EN-REDES-SOCIA-87207). Belongs to Data Dictionary
section: Información Institucional \> Interacción en redes sociales.

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

  Optional integer. Maximum number of rows to download.

- offset:

  Optional integer. Initial record offset for pagination.

- ...:

  Additional query parameters (e.g., pArgument1, pArgument2).

- format:

  Character. Desired download format: `"tibble"` (default), `"csv"`, or
  `"json"`.

- clean_names:

  Logical. If `TRUE` (default), converts column names to lowercase
  snake_case.

- timeout:

  Integer. Maximum wait time in seconds for HTTP connection (default 60
  seconds).

- api_key:

  Character. OEFA API Key. Defaults to
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

A [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) with
dataset records.

## Details

Main field structure according to OEFA's Official Data Dictionary:

- MES:

  Detalla El Mes En El Que Incorporan Nuevos Seguidores A Las Redes
  Sociales \[Cadena De Texto\]

- RED_SOCI:

  Indica En Qué Red Social Se Suman Nuevos Seguidores \[Cadena De
  Texto\]

- SEGUIDOR:

  Indica La Cantidad De Nuevos Seguidores \[Entero\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_segui_en_redes_socia_87207(limit = 10)
} # }
```
