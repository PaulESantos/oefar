# Download dataset: Proyectos de inversión

Downloads data for dataset 'Proyectos de inversión' from OEFA by its
GUID (PROYE-DE-INVER). Belongs to Data Dictionary section: Información
Institucional \> Información presupuestal.

## Usage

``` r
oefa_get_proye_de_inver(
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

- INVERSION:

  Descripción De La Inversion \[Cadena De Texto\]

- CODIGO:

  Código Único De Registro \[Entero\]

- MONTO_INV:

  Monto De La Inversion \[Entero\]

- EST_SIT:

  Estado Situacional Del Proyecto \[Cadena De Texto\]

- EST_SIT_C:

  Estado Situacional Agrupado Por Categoría \[Cadena De Texto\]

- INTERVENC:

  Area De Intervención Del Proyecto \[Cadena De Texto\]

- OBSERVAC:

  Observaciones \[Cadena De Texto\]

- %PI_MONTO_INV:

  Porcentaje Que Representa El Proyecto Respecto Al Total De Inversiones
  \[Entero\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_proye_de_inver(limit = 10)
} # }
```
