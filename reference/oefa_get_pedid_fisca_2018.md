# Download dataset: Pedidos fiscalía 2018

Downloads data for dataset 'Pedidos fiscalía 2018' from OEFA by its GUID
(PEDID-FISCA-2018). Belongs to Data Dictionary section: Politicas y
Estrategias \> Fiscalías Especializadas en Materia Ambiental.

## Usage

``` r
oefa_get_pedid_fisca_2018(
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

- TIPO_DE_PEDIDO:

  Tipo De Pedido Solicitado Por Las Fiscalías \[Cadena De Texto\]

- AMERITA\_:

  Indica Si El Pedido Solicitado Amerita Respuesta \[Booleano\]

- DOCUMENT:

  Oficio Recibido De Fiscalía \[Cadena De Texto\]

- FECHA_OEFA:

  Fecha Que El Documento Ingresa A Oefa \[Fecha\]

- REMITENT:

  Fiscalía Que Remite El Oficio \[Cadena De Texto\]

- SECTOR:

  Sector Al Que Pertenece El Delito \[Cadena De Texto\]

- PLAZO_FI:

  Plazo Indicado Por Fiscalía \[Fecha\]

- TIPO_DOC:

  Tipo De Documento Con El Que Se Absuelve El Requerimiento De Fiscalía
  \[Cadena De Texto\]

- NRO_INF:

  Número De Informe U Oficio \[Cadena De Texto\]

- FECHA_EM:

  Fecha En La Que Sale El Informe U Oficio \[Fecha\]

- OFICIO_SEFA:

  Oficio Con El Que Se Envia El Informe \[Cadena De Texto\]

- FECHA_RE:

  Fecha Con La Que Sale El Oficio De Remision \[Fecha\]

- ESTADO:

  Estado En El Que Se Encuentra El Pedido Solicitado \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_pedid_fisca_2018(limit = 10)
} # }
```
