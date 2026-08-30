# Download dataset: Componente biológico - EAT

Downloads data for dataset 'Componente biológico - EAT' from OEFA by its
GUID (COMPO-BIOLO-EAT). Belongs to Data Dictionary section: Evaluación
ambiental \> Evaluación Ambiental Temprana (EAT).

## Usage

``` r
oefa_get_compo_biolo_eat(
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

- NRO_INFO:

  Número Del Informe Correspondiente \[Cadena De Texto\]

- EVALUACION:

  Nombre De Evaluacion \[Cadena De Texto\]

- C_AMB:

  Tipo De Componente Ambiental Evaluada \[Cadena De Texto\]

- PROCEDEN:

  Biota Terrestre O Acuático \[Cadena De Texto\]

- PROCEDEN:

  Comunidades Biologicas \[Cadena De Texto\]

- DETALLE_M:

  Organismos \[Cadena De Texto\]

- PUNTO:

  Nombre Del Punto De Muestreo \[Cadena De Texto\]

- FECHA:

  Fecha En La Que Se Tomó La Muestra \[Fecha\]

- ESTE:

  Coordenada Este \[Numérico\]

- NORTE:

  Coordenada Norte \[Numérico\]

- ALTITUD:

  Altitud Del Punto De Muestreo \[Cadena De Texto\]

- ZONA:

  Zona Utm \[Cadena De Texto\]

- DATUM:

  Punto De Referencia Geográfica \[Cadena De Texto\]

- DESCRIPC:

  Descripción Referencial De La Ubicación Del Punto De Muestreo \[Cadena
  De Texto\]

- ESPECIE:

  Especie \[Cadena De Texto\]

- GENERO:

  Género \[Cadena De Texto\]

- FAMILIA:

  Familia \[Cadena De Texto\]

- ORDEN:

  Categoría Taxonómica Entre La Clase Y La Familia \[Cadena De Texto\]

- CLASE:

  Clase \[Cadena De Texto\]

- PHYLUM:

  Phylum \[Cadena De Texto\]

- TAXONES:

  Taxones \[Numérico\]

- ABUNDANC:

  Representación Relativa De Una Especie En Un Ecosistema Particular
  \[Numérico\]

- MEDIDA:

  Unidad Utilizada Para Medir Parametro \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_compo_biolo_eat(limit = 10)
} # }
```
