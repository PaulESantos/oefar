# Download dataset: Proyectos Normativos Externos 2018-2025

Downloads data for dataset 'Proyectos Normativos Externos 2018-2025'
from OEFA by its GUID (PROYE-NORMA-EXTER-65772). Belongs to Data
Dictionary section: Politicas y Estrategias \> Opiniones técnicas a
proyectos normativos.

## Usage

``` r
oefa_get_proye_norma_exter_65772(
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

- ORIGEN:

  Procedencia Del Proyecto Normativo Externo \[Cadena De Texto\]

- TEMA:

  Denominación Del Proyectos Normativo Externo \[Cadena De Texto\]

- JERARQUI:

  Rango O Tipo Del Proyecto Normativo Externo \[Cadena De Texto\]

- RESPONSAB:

  Órganos O Áreas Del Oefa Responsables De Formular La Opinión Al
  Proyecto Normativo Externo \[Cadena De Texto\]

- FECHA_ING:

  Fecha En Que Ingresa El Proyecto Normativo Externo A La Smer, Para La
  Emisión De Una Opinión Técnica \[Fecha\]

- FECHA_RE:

  Fecha En La Que La Opinión Formulada Respecto Al Proyecto Normativo
  Externo Se Remite Desde La Smer, Ya Sea Por Informe O Por Correo, Y
  Este Se Considera Como Atendido \[Fecha\]

- CANT_PROY:

  Cantidad De Artículos En Los Cuales Se Formularon Recomendaciones Como
  Institución, A Incorporar En El Proyecto Normativo Externo
  \[Numérico\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_proye_norma_exter_65772(limit = 10)
} # }
```
