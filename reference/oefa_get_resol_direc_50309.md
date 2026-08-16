# Descargar dataset: Resoluciones directorales 2018-2025

Descarga los datos del conjunto de datos 'Resoluciones directorales
2018-2025' del OEFA por su GUID (RESOL-DIREC-50309). Pertenece a la
sección del Diccionario de Datos: Fiscalización Ambiental \>
Resoluciones Emitidas.

## Usage

``` r
oefa_get_resol_direc_50309(
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

  Número De Resolución Directoral Correspondiente \[Cadena De Texto\]

- FECHA_RD:

  Fecha de Resolución Directoral \[Fecha\]

- NRO_EXPE:

  Número de Expediente de RD \[Cadena De Texto\]

- SECTOR:

  Sector Economico Que Corresponde (Mineria, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) \[Cadena
  De Texto\]

- RAZON_SO:

  Razon Social Del Administrado \[Cadena De Texto\]

- U_AMB:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- PROVINCIA:

  Provincia De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- DISTRITO:

  Distrito De Localizacion De La Unidad Fiscalizable \[Cadena De Texto\]

- TIPO_RD:

  Tipo De Rd \[Cadena De Texto\]
