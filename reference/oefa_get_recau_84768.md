# Download dataset: Recaudación

Downloads data for dataset 'Recaudación' from OEFA by its GUID
(RECAU-84768). Belongs to Data Dictionary section: Información
Institucional \> Recaudación.

## Usage

``` r
oefa_get_recau_84768(
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

- AÑO_REG:

  Año Correspondiente Al Aporte \[Cadena De Texto\]

- MES:

  Mes Correspondiente Al Aporte \[Cadena De Texto\]

- R.U.C.:

  R.U.C. Correspondiente Al Aportante \[Numérico\]

- RAZON_SO:

  Razón Social Correspondiente Al Aportante \[Cadena De Texto\]

- SECTOR:

  Sector Económico Correspondiente Al Aportante \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_recau_84768(limit = 10)
} # }
```
