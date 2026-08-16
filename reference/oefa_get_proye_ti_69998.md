# Descargar dataset: Proyectos TI

Descarga los datos del conjunto de datos 'Proyectos TI' del OEFA por su
GUID (PROYE-TI-69998). Pertenece a la sección del Diccionario de Datos:
Información Institucional \> Acciones estratégicas en TI.

## Usage

``` r
oefa_get_proye_ti_69998(
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

- AÑO_PROY:

  Año Correspondiente Al Proyecto \[Numérico\]

- CATEGORIA:

  Categoria De Implementacion De Proyecto \[Cadena De Texto\]

- PROYECTO:

  Nombre Del Proyecto \[Cadena De Texto\]

- PORCENTA:

  Porcentaje De Ejecucion Del Proyecto \[Numérico\]
