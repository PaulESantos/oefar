# Descargar dataset: Recaudación

Descarga los datos del conjunto de datos 'Recaudación' del OEFA por su
GUID (RECAU-84768). Pertenece a la sección del Diccionario de Datos:
Información Institucional \> Recaudación.

## Usage

``` r
oefa_get_recau_84768(
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

- AÑO_REG:

  Año Correspondiente Al Aporte \[Cadena De Texto\]

- MES:

  Mes Correspondiente Al Aporte \[Cadena De Texto\]

- R.U.C.:

  R.U.C. Correspondiente Al Aportante \[Numérico\]

- RAZON_SO:

  Razon Social Correspondiente Al Aportante \[Cadena De Texto\]

- SECTOR:

  Sector Económico Correspondiente Al Aportante \[Cadena De Texto\]
