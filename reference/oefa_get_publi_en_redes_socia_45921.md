# Download dataset: Publicaciones en redes sociales

Downloads data for dataset 'Publicaciones en redes sociales' from OEFA
by its GUID (PUBLI-EN-REDES-SOCIA-45921). Belongs to Data Dictionary
section: Información Institucional \> Interacción en redes sociales.

## Usage

``` r
oefa_get_publi_en_redes_socia_45921(
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

  Indica El Mes En El Que Se Hace La Publicación En La Red Social
  \[Cadena De Texto\]

- FECHA:

  Indica La Fecha En La Que Se Hace La Publicación En La Red Social
  \[Fecha\]

- PUBLIC:

  Especiica El Tipo De Publicación Que Se Hace En La Red Social \[Cadena
  De Texto\]

- TEMA:

  Especifica El Tema De La Publicación \[Cadena De Texto\]

- RED_SOCI:

  Especifica En Qué Red Social Se Hace La Mención \[Cadena De Texto\]

- VISITAS\_:

  Detalla El Número De Visitas Hecha A La Publicación Pr Los Usuarios
  \[Entero\]

- N°\_VECES:

  La Cantidad De Veces Que Se Comparte La Publicación \[Entero\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_publi_en_redes_socia_45921(limit = 10)
} # }
```
