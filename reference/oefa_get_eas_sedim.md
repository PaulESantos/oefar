# Download dataset: EAS - Sedimento

Downloads data for dataset 'EAS - Sedimento' from OEFA by its GUID
(EAS-SEDIM). Belongs to Data Dictionary section: Evaluación ambiental \>
Evaluaciones ambientales de seguimiento (EAS).

## Usage

``` r
oefa_get_eas_sedim(
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

- MONITOREO:

  Etapa De Monitoreo \[Cadena De Texto\]

- C_AMB:

  Tipo De Componente Ambiental Evaluada \[Cadena De Texto\]

- MATRIZ:

  Tipo De Matriz Evaluada \[Cadena De Texto\]

- SUBMATRIZ:

  Tipo De Submatriz A Evaluar \[Cadena De Texto\]

- PUNTO:

  Nombre Del Punto De Muestreo \[Cadena De Texto\]

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

- UBICACIÓN:

  Descripción Referencial De La Ubicación Del Punto De Muestreo \[Cadena
  De Texto\]

- MUESTRA:

  Si La Muestra Es Simple O Compuesta \[Cadena De Texto\]

- ANALISIS:

  Tipo De Analisis Realizado \[Cadena De Texto\]

- EXTRAC:

  Etapa De Extraccion \[Cadena De Texto\]

- FECHA:

  Fecha En La Que Se Tomó La Muestra \[Fecha\]

- VALOR:

  Resultado De Evaluacion \[Numérico\]

- PARAMETR:

  Parámetros Que Superan El Eca O Lmp \[Cadena De Texto\]

- MEDIDA:

  Unidad Utilizada Para Medir Parametro \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_eas_sedim(limit = 10)
} # }
```
