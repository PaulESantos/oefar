# Descargar dataset: Resoluciones subdirectorales 2018-2025

Descarga los datos del conjunto de datos 'Resoluciones subdirectorales
2018-2025' del OEFA por su GUID (RESOL-SUBDI). Pertenece a la sección
del Diccionario de Datos: Fiscalización Ambiental \> Resoluciones
Emitidas.

## Usage

``` r
oefa_get_resol_subdi(
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

  Entero opcional. Cantidad máxima de filas a descargar.

- offset:

  Entero opcional. Registro inicial para paginación.

- ...:

  Parámetros adicionales para la consulta (ej. pArgument1, pArgument2).

- format:

  Carácter. Formato de descarga deseado: `"tibble"` (por defecto),
  `"csv"` o `"json"`.

- clean_names:

  Lógico. Si es `TRUE` (por defecto), convierte los nombres de las
  columnas a minúsculas con guiones bajos.

- timeout:

  Entero. Tiempo máximo de espera en segundos para la conexión HTTP (por
  defecto 60 segundos).

- api_key:

  Carácter. API Key de OEFA. Por defecto utiliza
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

Un [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) con
los registros del dataset.

## Details

Estructura principal de campos según el Diccionario de Datos Oficial del
OEFA:

- N°\_RESOL:

  Número De La Resolución Subdirectoral \[Cadena De Texto\]

- FECHA_RSD:

  Fecha De Emision De La Resolución Subdirectoral \[Fecha\]

- NRO_EXPE:

  Número De Expediente De La Dfai \[Cadena De Texto\]

- SECTOR:

  Sector Economico Que Corresponde (Mineria, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) \[Cadena
  De Texto\]

- INFORME\_:

  Tipo De Informe (Informe De Supervision O Informe Tecnico Acusatorio)
  \[Cadena De Texto\]

- NRO_INF:

  Número De Informe \[Cadena De Texto\]

- SUPERV:

  Fecha De Inicio De La Supervision \[Fecha\]

- RAZON_SO:

  Nombre De La Razon Social Del Administrado \[Cadena De Texto\]

- UNIDAD:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- PROVINCIA:

  Provincia De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- DISTRITO:

  Distrito De Localizacion De La Unidad Fiscalizable \[Cadena De Texto\]

- TIPO_RSD:

  Sentido Legal De La Resolución Subdirectoral \[Cadena De Texto\]
