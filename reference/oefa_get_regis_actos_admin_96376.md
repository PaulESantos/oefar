# Download dataset: Registros actos administrativos 2021-2025

Downloads data for dataset 'Registros actos administrativos 2021-2025'
from OEFA by its GUID (REGIS-ACTOS-ADMIN-96376). Belongs to Data
Dictionary section: Fiscalización Ambiental \> Apelaciones Resueltas.

## Usage

``` r
oefa_get_regis_actos_admin_96376(
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

- NRO_EXPE:

  Número de Expediente Indicado en la Resolución Correspondiente
  \[Cadena De Texto\]

- RAZON_SO:

  Persona Natural O Jurídica, Así Como Cualquier Otra Forma Asociativa
  De Empresa O Patrimonio Autónomo, Que Desarrolla Una Actividad
  Económica, Servicio O Función Sujeta A Supervisión De La Autoridad De
  Supervisión. \[Cadena De Texto\]

- SECTOR:

  Sector Económico Que Corresponde (Minería, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructura Y Servicios)
  \[Cadena De Texto\]

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

- INF_SUPER:

  Documento Técnico Legal Aprobado Por La Autoridad De Supervisión Que
  Contiene Los Resultados De La Evaluación Del Cumplimiento De Las
  Obligaciones Fiscalizables En El Marco De Las Acciones De Supervisión.
  \[Cadena De Texto\]

- INFORME_T:

  Documento Que Contiene Los Hallazgos De Presuntas Infracciones
  Detectados Durante La Supervisión Con Su Respectivo Fundamento Técnico
  Y Legal. \[Cadena De Texto\]

- SUPERV:

  Inicio De Verificación Del Cumplimiento De Las Obligaciones
  Fiscalizables Y Funciones A Cargo De Las Efa. \[Fecha\]

- FIN_SUPERV:

  Fin De Verificación Del Cumplimiento De Las Obligaciones Fiscalizables
  Y Funciones A Cargo De Las Efa. \[Fecha\]

- INFRACCION:

  Referidas A Incidentes Y/O Emergencias Ambientales \[Cadena De Texto\]

- MEDIDA_CORR:

  Disposiciones A Través De Las Cuales Se Impone Al Administrado O La
  Administrada La Orden De Realizar Las Acciones Necesarias Para
  Revertir O Disminuir, En Lo Posible, El Efecto Nocivo Que La Conducta
  Infractora Hubiera Podido Producir En El Ambiente, Los Recursos
  Naturales Y La Salud De Las Personas. \[Cadena De Texto\]

- MEDIDA_CAU:

  Disposiciones A Través De Las Cuales Se Impone Al Administrado/A Una
  Orden Para Prevenir Un Daño Irreparable Al Ambiente, Los Recursos
  Naturales O La Salud De Las Personas, Ante La Detección De La Comisión
  De Una Presunta Infracción. \[Cadena De Texto\]

- MES_EMISION:

  Mes En Que Se Emite La Resolución \[Numérico\]

- AÑO_DE_E:

  Año En Que Se Emite La Resolución \[Numérico\]

- N°\_RESOL_ADM:

  Número de Resolución De Responsabilidad Administrativa \[Cadena De
  Texto\]

- FECHA_DE_RESOL:

  Fecha de Resolución De Responsabilidad Administrativa \[Fecha\]

- FECHA_DE_NOT:

  Fecha de Notificación De Responsabilidad Administrativa \[Fecha\]

- FECHA_DE_RE:

  Fecha De Emision De Resolución De Reconsideración \[Fecha\]

- RESOL_REC:

  Número De Resolución De Reconsideración \[Cadena De Texto\]

- FECHA_DE_RESOL2:

  Fecha de Emisión de Resolución de Reconsideración \[Fecha\]

- FECHA_DE_NOT3:

  Fecha de Notificación De Resolución de Reconsideración \[Fecha\]

- SENTIDO\_:

  Conclusiones descritas en La Resolución de Reconsideración \[Cadena De
  Texto\]

- RESOL_APE:

  Nro de Resolución TFA Correspondiente \[Cadena De Texto\]

- FECHA_DE_RESOL4:

  Fecha de Resolución TFA \[Fecha\]

- SENTIDO\_:

  Sentidos Principales Indicados en Resolución \[Cadena De Texto\]

- SENTIDO\_:

  Sentidos Indicados en La Resolución de Reconsideración \[Cadena De
  Texto\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_regis_actos_admin_96376(limit = 10)
} # }
```
