# Download dataset: Expedientes resueltos 2021-2025

Downloads data for dataset 'Expedientes resueltos 2021-2025' from OEFA
by its GUID (EXPED-RESUE-15640). Belongs to Data Dictionary section:
Fiscalización Ambiental \> Apelaciones Resueltas.

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

  Optional integer. Maximum number of rows to download.

- offset:

  Optional integer. Initial record offset for pagination.

- ...:

  Additional query parameters (e.g., pArgument1, pArgument2).

- format:

  Character. Desired download format: `"tibble"` (default), `"csv"`, or
  `"json"`.

- clean_names:

  Logical. If `TRUE` (default), converts column names to lowercase
  snake_case.

- timeout:

  Integer. Maximum wait time in seconds for HTTP connection (default 60
  seconds).

- api_key:

  Character. OEFA API Key. Defaults to
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

A [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) with
dataset records.

## Details

Main field structure according to OEFA's Official Data Dictionary:

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

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_exped_resue_15640(limit = 10)
} # }
```
