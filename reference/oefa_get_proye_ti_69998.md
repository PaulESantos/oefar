# Download dataset: Proyectos TI

Downloads data for dataset 'Proyectos TI' from OEFA by its GUID
(PROYE-TI-69998). Belongs to Data Dictionary section: Información
Institucional \> Acciones estratégicas en TI.

## Usage

``` r
oefa_get_proye_ti_69998(
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

- AÑO_PROY:

  Año Correspondiente Al Proyecto \[Numérico\]

- CATEGORIA:

  Categoria De Implementacion De Proyecto \[Cadena De Texto\]

- PROYECTO:

  Nombre Del Proyecto \[Cadena De Texto\]

- PORCENTA:

  Porcentaje De Ejecucion Del Proyecto \[Numérico\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_proye_ti_69998(limit = 10)
} # }
```
