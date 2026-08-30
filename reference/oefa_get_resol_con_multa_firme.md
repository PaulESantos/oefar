# Download dataset: Resolución con multa firmes 2019-2025

Downloads data for dataset 'Resolución con multa firmes 2019-2025' from
OEFA by its GUID (RESOL-CON-MULTA-FIRME). Belongs to Data Dictionary
section: Fiscalización Ambiental \> Resoluciones Emitidas.

## Usage

``` r
oefa_get_resol_con_multa_firme(
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

  Mes de Imposición de Multa \[Cadena De Texto\]

- ADMINIST:

  Administrado Mencionado en Resolución Corrrespondiente \[Cadena De
  Texto\]

- EXPEDIEN:

  Número de Expediente \[Cadena De Texto\]

- AÑO_MULT:

  Año de Imposición de Multa \[Numérico\]

- SECTOR:

  Sector al que pertenece el Administrado \[Cadena De Texto\]

- U_AMB:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento \[Cadena De Texto\]

- PROVINCIA:

  Provincia \[Cadena De Texto\]

- DISTRITO:

  Distrito De Localización De La Unidad Fiscalizable \[Cadena De Texto\]

- INFRACCION:

  Tipo de Multas Impuestas Por El Oefa Consideradas Como Una Obligación
  De Pago Por Parte Del Administrado \[Cadena De Texto\]

- RESOL_1RA:

  Resolución De Primera Instancia \[Cadena De Texto\]

- RESOL_1RA:

  Fecha De Emision De La Resolución De Primera Instancia \[Fecha\]

- RESOL_2DA:

  Resolución De Segunda Instancia \[Cadena De Texto\]

- RESOL_2DA:

  Fecha De Emision De La Resolución De Segunda Instancia \[Fecha\]

- MULTA_UIT:

  Multas Expresadas en UIT \[Numérico\]

- MULTA_SO:

  Multas Expresadas en Soles \[Numérico\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_resol_con_multa_firme(limit = 10)
} # }
```
