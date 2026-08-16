# Descargar dataset: Resolución con multa firmes 2019-2025

Descarga los datos del conjunto de datos 'Resolución con multa firmes
2019-2025' del OEFA por su GUID (RESOL-CON-MULTA-FIRME). Pertenece a la
sección del Diccionario de Datos: Fiscalización Ambiental \>
Resoluciones Emitidas.

## Usage

``` r
oefa_get_resol_con_multa_firme(
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

- MES:

  Mes de Imposición de Multa \[Cadena De Texto\]

- ADMINIST:

  Administrado Mencionado en Resolución Corrrespondiente \[Cadena De
  Texto\]

- EXPEDIEN:

  Número de Expediente \[Cadena De Texto\]

- AÑO_MULT:

  Año de Imposición de Multa \[Numérico\]

- SECTOR:

  Sector al que pertenece el Administrado \[Cadena De Texto\]

- U_AMB:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento \[Cadena De Texto\]

- PROVINCIA:

  Provincia \[Cadena De Texto\]

- DISTRITO:

  Distrito De Localizacion De La Unidad Fiscalizable \[Cadena De Texto\]

- INFRACCION:

  Tipo de Multas Impuestas Por El Oefa Consideradas Como Una Obligación
  De Pago Por Parte Del Administrado \[Cadena De Texto\]

- RESOL_1RA:

  Resolución De Primera Instancia \[Cadena De Texto\]

- RESOL_1RA:

  Fecha De Emision De La Resolución De Primera Instancia \[Fecha\]

- RESOL_2DA:

  Resolución De Segunda Instancia \[Cadena De Texto\]

- RESOL_2DA:

  Fecha De Emision De La Resolución De Segunda Instancia \[Fecha\]

- MULTA_UIT:

  Multas Expresadas en UIT \[Numérico\]

- MULTA_SO:

  Multas Expresadas en Soles \[Numérico\]
