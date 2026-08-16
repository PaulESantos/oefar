# Descargar dataset: Aprobación de la selección de personal

Descarga los datos del conjunto de datos 'Aprobación de la selección de
personal' del OEFA por su GUID (APROB-DEL-SELE). Pertenece a la sección
del Diccionario de Datos: Información Institucional \> Personal.

## Usage

``` r
oefa_get_aprob_del_sele(
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

- REGISTRO:

  Número Correlativo Que Hace Referncia A Una Convocatoria Una
  Convocatoria Cas \[Entero\]

- AÑO_SELEC:

  Año Que Inició Sus Labores En La Institución \[Cadena De Texto\]

- MES:

  Mes Que Inició Sus Labores En La Institución \[Cadena De Texto\]

- ESTADO:

  Estado Del Proceso De Selección \[Cadena De Texto\]

- AREA_SELEC:

  A Que Área Pertenece Cada Proceso \[Cadena De Texto\]

- CANT_SELEC:

  Total De Plazas \[Entero\]
