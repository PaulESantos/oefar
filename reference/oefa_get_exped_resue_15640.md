# Descargar dataset: Expedientes resueltos 2021-2025

Descarga los datos del conjunto de datos 'Expedientes resueltos
2021-2025' del OEFA por su GUID (EXPED-RESUE-15640). Pertenece a la
sección del Diccionario de Datos: Fiscalización Ambiental \> Apelaciones
Resueltas.

## Usage

``` r
oefa_get_exped_resue_15640(
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

- SECTOR:

  Rama O División De La Actividad Económica Al Que Pertenece El
  Administrado. \[Cadena De Texto\]

- NRO_EXPE_ADM:

  Número De Expediente Que Se Genera Al Iniciar Un Procedimiento
  Administrativo Sancionador \[Cadena De Texto\]

- ADMINIST:

  Persona Natural O Jurídica Que Desarrolla Una Actividad Económica
  Sujeta Al Ámbito De Competencia Del Oefa. \[Cadena De Texto\]

- UNIDAD:

  Lugar Donde El Administrado Desarrolla Su Actividad (Área Productiva,
  Lote, Central, Planta, Concesión, Dependencia, Entre Otros) O Su
  Función De Fiscalización Ambiental, Sujeta A Supervisión De La
  Autoridad De Supervisión. Puede Comprender Uno O Más Componentes.
  \[Cadena De Texto\]

- DISTRITO:

  Nombre De La Provincia Donde Se Ubica De La Zona Fiscalizable \[Cadena
  De Texto\]

- PROVINCIA:

  Nombre Del Departamento Donde Se Ubica La Zona Fiscalizable \[Cadena
  De Texto\]

- DEPARTAM:

  Nombre Del Distrito Donde Se Ubica La Zona Fiscalizable \[Cadena De
  Texto\]

- RESOL_TFA:

  Número De La Resolución Emitida Por El Tribunal De Fiscalización
  Ambiental \[Cadena De Texto\]

- FECHA_DE_RESOL:

  Fecha De La Sesión En La Que Se Tomaron Los Acuerdos Correspondientes
  Para La Emisión De La Resolución \[Fecha\]

- RESOLVIERON:

  Sentido Del Pronunciamiento Del Tfa Que Puede Confirmar, Revocar O
  Declarar La Nulidad, Parcial O Total, De La Resolución Apelada
  \[Cadena De Texto\]

- MULTA_INF:

  Sanción Económica Impuesta Al Administrado Por Haber Incurrido En
  Infracción Administrativa \[Cadena De Texto\]
