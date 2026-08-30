# Download dataset: Informes de supervisión 2018

Downloads data for dataset 'Informes de supervisión 2018' from OEFA by
its GUID (INFOR-DE-LA-COORD-AGRIC). Belongs to Data Dictionary section:
Supervisión ambiental \> Supervisiones concluidas.

## Usage

``` r
oefa_get_infor_de_la_coord_agric(
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

- COORDINAC:

  Coordinacion Responsable De La Supervisión \[Cadena De Texto\]

- MES_SUPERV:

  Mes De Ejecución De La Supervisión \[Cadena De Texto\]

- NRO_EXPE:

  Número Del Informe De Supervisión Aprobado \[Cadena De Texto\]

- ADMINIST:

  Razón Social Del Administrado \[Cadena De Texto\]

- UNIDAD:

  Lugar Donde El Administrado Desarrolla Su Actividad Económica O Su
  Función De Fiscalización Ambiental, Sujeta A Supervisión De La
  Autoridad De Supervisión. Puede Comprender Uno O Más Componentes.
  \[Cadena De Texto\]

- ACT_FUNC:

  La Actividad Está Directamente Ligada A La Noción De Producción;No Hay
  Producción Sin Actividad. Producir Es Crear Bienes O Suministrar
  Servicios Dentro De Un Proceso De Producción Que Requiere Factores
  (Materia Prima, Trabajo Y Capital Fijo, Entre Otros) .Las Actividades
  Se Clasifican Según La Competencia De Cada Sector. \[Cadena De Texto\]

- TIPO_SUPERV:

  En Función De La Programación, La Supervisión Puede Ser Regular O
  Especial. \[Cadena De Texto\]

- UBIC_SUPERV:

  Region Donde Se Desarrolló La Supervisión \[Cadena De Texto\]

- NRO_INF:

  Número De Informe \[Cadena De Texto\]

- MES_APROB:

  Mes En El Que Se Aprueba El Informe De Supervisión Por La Dirección
  \[Cadena De Texto\]

- CANT_OBLIG:

  Cantidad Total De Obligaciones Verificadas Por Supervisión Y Tipo De
  Análisis \[Numérico\]

- NRO_MEMO:

  Número Del Memorando A Dfai \[Cadena De Texto\]

- NRO_CARTA:

  Número De Carta De Notificación U Oficio Al Administrado \[Cadena De
  Texto\]

- EMISION_CARTA:

  Fecha De Aprobación Del De La Carta De Notificación U Oficio Al
  Administrado \[Numérico\]

- NRO_OFIC:

  Número De Carta U Oficio \[Cadena De Texto\]

- NRO_MEMO:

  Número De Memorando Hacia Archivo \[Cadena De Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_infor_de_la_coord_agric(limit = 10)
} # }
```
