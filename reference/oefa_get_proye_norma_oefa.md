# Download dataset: Proyectos Normativos OEFA

Downloads data for dataset 'Proyectos Normativos OEFA' from OEFA by its
GUID (PROYE-NORMA-OEFA). Belongs to Data Dictionary section: Politicas y
Estrategias \> Proyectos normativos del OEFA.

## Usage

``` r
oefa_get_proye_norma_oefa(
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

- MEJ_REG:

  Denominación Del Proyecto Normativo \[Cadena De Texto\]

- ANALISIS_CR:

  Indica Si El Proyecto Normativo Requiere Pasar Por Un Proceso De
  Análisis De Calidad Regulatoria (Ria) \[Cadena De Texto\]

- RCD_DE_PNOR:

  Número De Resolución Mediante La Cual Se Publica En Proyecto Normativo
  \[Cadena De Texto\]

- FECHA_PNOR:

  Fecha De La Resolución De Publicación Del Proyecto Normativo \[Fecha\]

- PARTICIP:

  Indica Si El Proyecto Contó Con Una Etapa De Participación Ciudadana
  \[Booleano\]

- N°\_COMEN:

  Número De Personas Que Participaron En El Proceso De Participación
  Ciudadana Mediante La Emisión De Comentarios \[Numérico\]

- COMENT_R:

  Cantidad De Comentarios Que Se Recibieron De Parte De La Ciudadanía
  Respecto Al Proyecto Normativo \[Numérico\]

- COMENT_A:

  Cantidad De Comentarios Que Tuvieron Incidencia En La Norma, Generando
  Alguna Modificación, Precisión O Mejora Al Proyecto Normativo
  \[Numérico\]

- RCD_NOR:

  Número De Resolución Mediante La Cual Se Publica La Norma Aprobada
  \[Numérico\]

- FECHA_NOR:

  Fecha De La Resolución De Publicación De La Norma \[Fecha\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_proye_norma_oefa(limit = 10)
} # }
```
