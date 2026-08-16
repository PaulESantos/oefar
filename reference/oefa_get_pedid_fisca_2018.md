# Descargar dataset: Pedidos fiscalía 2018

Descarga los datos del conjunto de datos 'Pedidos fiscalía 2018' del
OEFA por su GUID (PEDID-FISCA-2018). Pertenece a la sección del
Diccionario de Datos: Politicas y Estrategias \> Fiscalías
Especializadas en Materia Ambiental.

## Usage

``` r
oefa_get_pedid_fisca_2018(
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

- TIPO_DE_PEDIDO:

  Tipo De Pedido Solicitado Por Las Fiscalias \[Cadena De Texto\]

- AMERITA\_:

  Indica Si El Pedido Solicitado Amerita Respuesta \[Booleano\]

- DOCUMENT:

  Oficio Recibido De Fiscalia \[Cadena De Texto\]

- FECHA_OEFA:

  Fecha Que El Documento Ingresa A Oefa \[Fecha\]

- REMITENT:

  Fiscalia Que Remite El Oficio \[Cadena De Texto\]

- SECTOR:

  Sector Al Que Pertenece El Delito \[Cadena De Texto\]

- PLAZO_FI:

  Plazo Indicado Por Fiscalia \[Fecha\]

- TIPO_DOC:

  Tipo De Documento Con El Que Se Absuelve El Requrimiento De Fiscalia
  \[Cadena De Texto\]

- NRO_INF:

  Número De Informe U Oficio \[Cadena De Texto\]

- FECHA_EM:

  Fecha En La Que Sale El Informe U Oficio \[Fecha\]

- OFICIO_SEFA:

  Oficio Con El Que Se Envia El Informe \[Cadena De Texto\]

- FECHA_RE:

  Fecha Con La Que Sale El Oficio De Remision \[Fecha\]

- ESTADO:

  Estado En El Que Se Encuentra El Pedido Solictado \[Cadena De Texto\]
