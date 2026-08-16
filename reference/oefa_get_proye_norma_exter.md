# Descargar dataset: Proyectos Normativos Externos

Descarga los datos del conjunto de datos 'Proyectos Normativos Externos'
del OEFA por su GUID (PROYE-NORMA-EXTER). Pertenece a la sección del
Diccionario de Datos: Politicas y Estrategias \> Opiniones técnicas a
proyectos normativos.

## Usage

``` r
oefa_get_proye_norma_exter(
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

- ORIGEN:

  Procedencia Del Proyecto Normativo Externo \[Cadena De Texto\]

- TEMA:

  Denominación Del Proyectos Normativo Externo \[Cadena De Texto\]

- JERARQUI:

  Rango O Tipo Del Proyecto Normativo Externo \[Cadena De Texto\]

- RESPONSAB:

  Órganos O Áreas Del Oefa Responsables De Formular La Opinión Al
  Proyecto Normativo Externo \[Cadena De Texto\]

- FECHA_ING:

  Fecha En Que Ingresa El Proyecto Normativo Externo A La Smer, Para La
  Emisión De Una Opinión Técnica \[Fecha\]

- FECHA_RE:

  Fecha En La Que La Opnión Formulada Respecto Al Proyecto Normativo
  Externo Se Remite Desde La Smer, Ya Sea Por Informe O Por Correo, Y
  Este Se Considera Como Atendido \[Fecha\]

- CANT_PROY:

  Cantidad De Artículos En Los Cuales Se Formularon Recomendaciones Como
  Institución, A Incorporar En El Proyecto Normativo Externo
  \[Numérico\]
