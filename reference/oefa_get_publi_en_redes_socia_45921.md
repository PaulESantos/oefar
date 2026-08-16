# Descargar dataset: Publicaciones en redes sociales

Descarga los datos del conjunto de datos 'Publicaciones en redes
sociales' del OEFA por su GUID (PUBLI-EN-REDES-SOCIA-45921). Pertenece a
la sección del Diccionario de Datos: Información Institucional \>
Interacción en redes sociales.

## Usage

``` r
oefa_get_publi_en_redes_socia_45921(
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

  Indica El Mes En El Que Se Hace La Publicación En La Red Social
  \[Cadena De Texto\]

- FECHA:

  Indica La Fecha En La Que Se Hace La Publicación En La Red Social
  \[Fecha\]

- PUBLIC:

  Especiica El Tipo De Publicación Que Se Hace En La Red Social \[Cadena
  De Texto\]

- TEMA:

  Especifica El Tema De La Publicación \[Cadena De Texto\]

- RED_SOCI:

  Especifica En Qué Red Social Se Hace La Mención \[Cadena De Texto\]

- VISITAS\_:

  Detalla El Número De Visitas Hecha A La Publicación Pr Los Usuarios
  \[Entero\]

- N°\_VECES:

  La Cantidad De Veces Que Se Comparte La Publicación \[Entero\]
