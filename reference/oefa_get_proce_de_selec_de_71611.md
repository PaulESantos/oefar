# Download dataset: Procesos de selección de personal

Downloads data for dataset 'Procesos de selección de personal' from OEFA
by its GUID (PROCE-DE-SELEC-DE-71611). Belongs to Data Dictionary
section: Información Institucional \> Personal.

## Usage

``` r
oefa_get_proce_de_selec_de_71611(
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

- REGISTRO:

  Número Correlativo Que Hace Referencia A Una Convocatoria Una
  Convocatoria Cas \[Entero\]

- AÑO_SELEC:

  Año Que Inició Sus Labores En La Institución \[Cadena De Texto\]

- MES:

  Mes Que Inició Sus Labores En La Institución \[Cadena De Texto\]

- ESTADO:

  Estado Del Proceso De Selección \[Cadena De Texto\]

- AREA_SELEC:

  A Que Área Pertenece Cada Proceso \[Cadena De Texto\]

- CANT_SELEC:

  Total De Plazas \[Entero\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_proce_de_selec_de_71611(limit = 10)
} # }
```
