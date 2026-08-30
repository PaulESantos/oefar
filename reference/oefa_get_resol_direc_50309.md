# Download dataset: Resoluciones directorales 2018-2025

Downloads data for dataset 'Resoluciones directorales 2018-2025' from
OEFA by its GUID (RESOL-DIREC-50309). Belongs to Data Dictionary
section: Fiscalización Ambiental \> Resoluciones Emitidas.

## Usage

``` r
oefa_get_resol_direc_50309(
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

  Número De Resolución Directoral Correspondiente \[Cadena De Texto\]

- FECHA_RD:

  Fecha de Resolución Directoral \[Fecha\]

- NRO_EXPE:

  Número de Expediente de RD \[Cadena De Texto\]

- SECTOR:

  Sector Económico Que Corresponde (Minería, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructura Y Servicios)
  \[Cadena De Texto\]

- RAZON_SO:

  Razón Social Del Administrado \[Cadena De Texto\]

- U_AMB:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento De Localización De La Unidad Fiscalizable \[Cadena De
  Texto\]

- PROVINCIA:

  Provincia De Localización De La Unidad Fiscalizable \[Cadena De
  Texto\]

- DISTRITO:

  Distrito De Localización De La Unidad Fiscalizable \[Cadena De Texto\]

- TIPO_RD:

  Tipo De Rd \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_resol_direc_50309(limit = 10)
} # }
```
