# Download dataset: Medidas administrativas de las direcciones de supervisión

Downloads data for dataset 'Medidas administrativas de las direcciones
de supervisión' from OEFA by its GUID (MEDID-ADMIN-DE-LAS-DIREC).
Belongs to Data Dictionary section: Supervisión ambiental \> Medidas
Administrativas.

## Usage

``` r
oefa_get_medid_admin_de_las_direc(
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

- SECTOR:

  Sector \[Cadena De Texto\]

- NRO_EXPE:

  Número De Expediente \[Cadena De Texto\]

- TITULAR:

  Razón Social Del Administrado \[Cadena De Texto\]

- UNIDAD:

  Lugar Donde El Administrado Desarrolla Su Actividad Económica O Su
  Función De Fiscalización Ambiental, Sujeta A Supervisión De La
  Autoridad De Supervisión. Puede Comprender Uno O Más Componentes.
  \[Cadena De Texto\]

- DET_HECHOS:

  Fecha De Deteccion De Los Hechos \[Fecha\]

- NRO_RESOL:

  Número De Resolución Directoral Que Dicta La Medida \[Cadena De
  Texto\]

- FECHA_RESOL:

  Fecha En La Que Se Emite La Resolución Directoral \[Cadena De Texto\]

- DESC_MEDIDAS:

  Indica El Tipo De Medida Administrativa Dictada \[Cadena De Texto\]

- T_MEDIDA:

  Abreviatura De Tipo De Medida Admnistrativa \[Cadena De Texto\]

- MP:

  Disposiciones A Través De Las Cuales La Autoridad De Supervisión
  Directa Impone A Un Administrado Una Obligación De Hacer O No Hacer,
  Destinada A Evitar Un Inminente Peligro O Un Alto Riesgo De Producirse
  Un Daño Grave Al Ambiente, Los Recursos Naturales Y La Salud De Las
  Personas, Así Como A Mitigar Las Causas Que Generan La Degradación O
  El Daño Ambiental. \[Cadena De Texto\]

- MCP:

  Disposición Dictada Por La Autoridad De Supervisión A Través De La
  Cual Se Ordena Al Administrado Realizar Determinadas Acciones Que
  Tengan Como Finalidad Garantizar La Eficacia De La Fiscalización
  Ambiental. \[Cadena De Texto\]

- ESTADO:

  Estado De La Medida Administrativa \[Cadena De Texto\]

- INF_SUPERC:

  Informe De Supervisión De Cumplimiento De La Medida Admnistrativa
  \[Cadena De Texto\]

- NRO_RESOLV:

  Número De La Resolución De Variacion \[Cadena De Texto\]

- NRO_TEC:

  Número De Informe Técnico \[Cadena De Texto\]

- NRO_CONSID:

  Número De Resolución De Reconsideración \[Cadena De Texto\]

- NRO_TFA:

  Número De Resolución Del Tfa Del Recurso Impugnado \[Cadena De Texto\]

- REGION:

  Indica Region Donde Impuso La Medida. \[Cadena De Texto\]

- PROVINCIA:

  Indica Provincia Donde Impuso La Medida. \[Cadena De Texto\]

- DISTRITO:

  Indica Distrito Donde Impuso La Medida. \[Cadena De Texto\]

- MANDATO:

  Descripción Del Mandato \[Cadena De Texto\]

- REVOCACION:

  Indica Si Revocó La Medida Administrativa \[Booleano\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_medid_admin_de_las_direc(limit = 10)
} # }
```
