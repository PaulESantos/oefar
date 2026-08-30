# Download dataset: Resoluciones subdirectorales 2018-2025

Downloads data for dataset 'Resoluciones subdirectorales 2018-2025' from
OEFA by its GUID (RESOL-SUBDI). Belongs to Data Dictionary section:
Fiscalización Ambiental \> Resoluciones Emitidas.

## Usage

``` r
oefa_get_resol_subdi(
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

- N°\_RESOL:

  Número De La Resolución Subdirectoral \[Cadena De Texto\]

- FECHA_RSD:

  Fecha De Emision De La Resolución Subdirectoral \[Fecha\]

- NRO_EXPE:

  Número De Expediente De La Dfai \[Cadena De Texto\]

- SECTOR:

  Sector Económico Que Corresponde (Minería, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructura Y Servicios)
  \[Cadena De Texto\]

- INFORME\_:

  Tipo De Informe (Informe De Supervision O Informe Tecnico Acusatorio)
  \[Cadena De Texto\]

- NRO_INF:

  Número De Informe \[Cadena De Texto\]

- SUPERV:

  Fecha De Inicio De La Supervision \[Fecha\]

- RAZON_SO:

  Nombre De La Razón Social Del Administrado \[Cadena De Texto\]

- UNIDAD:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento De Localización De La Unidad Fiscalizable \[Cadena De
  Texto\]

- PROVINCIA:

  Provincia De Localización De La Unidad Fiscalizable \[Cadena De
  Texto\]

- DISTRITO:

  Distrito De Localización De La Unidad Fiscalizable \[Cadena De Texto\]

- TIPO_RSD:

  Sentido Legal De La Resolución Subdirectoral \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_resol_subdi(limit = 10)
} # }
```
