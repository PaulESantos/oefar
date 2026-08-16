# Descargar dataset: EAS - Componente Hidrobiología

Descarga los datos del conjunto de datos 'EAS - Componente
Hidrobiología' del OEFA por su GUID (EAS-COMPO-HIDRO). Pertenece a la
sección del Diccionario de Datos: Evaluación ambiental \> Evaluaciones
ambientales de seguimiento (EAS).

## Usage

``` r
oefa_get_eas_compo_hidro(
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

- NRO_INFO:

  Número Del Informe Correspondiente \[Cadena De Texto\]

- EVALUACION:

  Nombre De Evaluacion \[Cadena De Texto\]

- C_AMB:

  Tipo De Componente Ambiental Evaluada \[Cadena De Texto\]

- PROCEDEN:

  Biota Terrestre O Acuático \[Cadena De Texto\]

- PROCEDEN:

  Comunidades Biologicas \[Cadena De Texto\]

- DETALLE_M:

  Organismos \[Cadena De Texto\]

- PUNTO:

  Nombre Del Punto De Muestreo \[Cadena De Texto\]

- FECHA:

  Fecha En La Que Se Tomó La Muestra \[Fecha\]

- ESTE:

  Coordenada Este \[Numérico\]

- NORTE:

  Coordenada Norte \[Numérico\]

- ALTITUD:

  Altitud Del Punto De Muestreo \[Cadena De Texto\]

- ZONA:

  Zona Utm \[Cadena De Texto\]

- DATUM:

  Punto De Referencia Geográfica \[Cadena De Texto\]

- DESCRIPC:

  Descripción Referencial De La Ubicación Del Punto De Muestreo \[Cadena
  De Texto\]

- ESPECIE:

  Especie \[Cadena De Texto\]

- GENERO:

  Género \[Cadena De Texto\]

- FAMILIA:

  Familia \[Cadena De Texto\]

- ORDEN:

  Categoría Taxonómica Entre La Clase Y La Familia \[Cadena De Texto\]

- CLASE:

  Clase \[Cadena De Texto\]

- PHYLUM:

  Phylum \[Cadena De Texto\]

- TAXONES:

  Taxones \[Numérico\]

- ABUNDANC:

  Representación Relativa De Una Especie En Un Ecosistema Particular
  \[Numérico\]

- MEDIDA:

  Unidad Utilizada Para Medir Parametro \[Cadena De Texto\]
