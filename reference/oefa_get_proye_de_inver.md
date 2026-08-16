# Descargar dataset: Proyectos de inversión

Descarga los datos del conjunto de datos 'Proyectos de inversión' del
OEFA por su GUID (PROYE-DE-INVER). Pertenece a la sección del
Diccionario de Datos: Información Institucional \> Información
presupuestal.

## Usage

``` r
oefa_get_proye_de_inver(
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

- INVERSION:

  Descripción De La Inversion \[Cadena De Texto\]

- CODIGO:

  Código Único De Registro \[Entero\]

- MONTO_INV:

  Monto De La Inversion \[Entero\]

- EST_SIT:

  Estado Situacional Del Proyecto \[Cadena De Texto\]

- EST_SIT_C:

  Estado Situacional Agrupado Por Categoría \[Cadena De Texto\]

- INTERVENC:

  Area De Intervención Del Proyecto \[Cadena De Texto\]

- OBSERVAC:

  Observaciones \[Cadena De Texto\]

- %PI_MONTO_INV:

  Porcentaje Que Representa El Proyecto Respecto Al Total De Inversiones
  \[Entero\]
