# Descargar dataset: Proyectos Normativos OEFA

Descarga los datos del conjunto de datos 'Proyectos Normativos OEFA' del
OEFA por su GUID (PROYE-NORMA-OEFA). Pertenece a la sección del
Diccionario de Datos: Politicas y Estrategias \> Proyectos normativos
del OEFA.

## Usage

``` r
oefa_get_proye_norma_oefa(
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

- MEJ_REG:

  Denominación Del Proyecto Normativo \[Cadena De Texto\]

- ANALISIS_CR:

  Indica Si El Proyecto Normativo Requiere Pasar Por Un Proceso De
  Análisis De Calidad Regulatoria (Ria) \[Cadena De Texto\]

- RCD_DE_PNOR:

  Número De Resolución Mediante La Cual Se Publica En Proyecto Normativo
  \[Cadena De Texto\]

- FECHA_PNOR:

  Fecha De La Resolución De Publicación Del Proyecto Normativo \[Fecha\]

- PARTICIP:

  Indica Si El Proyecto Contó Con Una Etapa De Participación Ciudadana
  \[Booleano\]

- N°\_COMEN:

  Número De Personas Que Participaron En El Proceso De Participación
  Ciudadana Mediante La Emisión De Comentarios \[Numérico\]

- COMENT_R:

  Cantidad De Comentarios Que Se Recibieron De Parte De La Ciudadanía
  Respecto Al Proyecto Normativo \[Numérico\]

- COMENT_A:

  Cantidad De Comentarios Que Tuvieron Incidencia En La Norma, Generando
  Alguna Modificación, Precisión O Mejora Al Proyecto Normativo
  \[Numérico\]

- RCD_NOR:

  Número De Resolución Mediante La Cual Se Publica La Norma Aprobada
  \[Numérico\]

- FECHA_NOR:

  Fecha De La Resolución De Publicación De La Norma \[Fecha\]
