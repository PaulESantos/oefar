# Descargar dataset: EAT - Componente ambiental Aire

Descarga los datos del conjunto de datos 'EAT - Componente ambiental
Aire' del OEFA por su GUID (EAT-COMPO-AMBIE-AIRE). Pertenece a la
sección del Diccionario de Datos: Evaluación ambiental \> Evaluación
Ambiental Temprana (EAT).

## Usage

``` r
oefa_get_eat_compo_ambie_aire(
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

- MONITOREO:

  Etapa De Monitoreo \[Cadena De Texto\]

- C_AMB:

  Tipo De Componente Ambiental Evaluada \[Cadena De Texto\]

- MATRIZ:

  Tipo De Matriz Evaluada \[Cadena De Texto\]

- SUBMATRIZ:

  Tipo De Submatriz A Evaluar \[Cadena De Texto\]

- PUNTO:

  Nombre Del Punto De Muestreo \[Cadena De Texto\]

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

- UBICACIÓN:

  Descripción Referencial De La Ubicación Del Punto De Muestreo \[Cadena
  De Texto\]

- MUESTRA:

  Si La Muestra Es Simple O Compuesta \[Cadena De Texto\]

- ANALISIS:

  Tipo De Analisis Realizado \[Cadena De Texto\]

- FECHA:

  Fecha En La Que Se Tomó La Muestra \[Fecha\]

- VALOR:

  Resultado De Evaluacion \[Numérico\]

- PARAMETR:

  Parámetros Que Superan El Eca O Lmp \[Cadena De Texto\]

- MEDIDA:

  Unidad Utilizada Para Medir Parametro \[Cadena De Texto\]
