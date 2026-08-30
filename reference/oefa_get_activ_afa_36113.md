# Download dataset: Actividades Afa 2018-2024

Downloads data for dataset 'Actividades Afa 2018-2024' from OEFA by its
GUID (ACTIV-AFA-36113). Belongs to Data Dictionary section: Politicas y
Estrategias \> Fortalecimiento de capacidades en fiscalización
ambiental.

## Usage

``` r
oefa_get_activ_afa_36113(
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

- INICIO:

  Se Hace Referencia A La Fecha De Inicio De La Actividad Académica.
  \[Fecha\]

- FECHA_FIN:

  Se Hace Referencia A La Fecha De Termino De Actividad Académica.
  \[Fecha\]

- ACTIVIDAD:

  Se Hace Referencia A: Programa De Formación, Cursos Y Jornadas
  Académicas. \[Cadena De Texto\]

- SUB_TIPO:

  Hace Referencia A Subgrupos Programa De Formación(Diplomado, Programa
  Actualización, Pasantías, Curso De Extensión Universitaria),
  Cursos(Curso Básico, Curso Taller O Curso De Especialización),
  Jornadas Académicas(Taller, Charlas, Conferencias, Cátedras,Asistencia
  Técnica) \[Cadena De Texto\]

- EVENTO:

  Corresponde Al Nombre De La Actividad Académica. \[Cadena De Texto\]

- DESTINAT:

  Se Hace Referencia A: Colaboradores Del Oefa, Funcionarios Públicos,
  Administrados Y Ciudadanos \[Cadena De Texto\]

- DEPARTAM:

  Corresponde Al Departamento Donde Se Realiza La Actividad Académica.
  \[Cadena De Texto\]

- PROVINCIA:

  Corresponde A La Provincia Donde Se Realiza La Actividad Académica.
  \[Cadena De Texto\]

- CIUDAD:

  Corresponde A La Ciudad Donde Se Realiza La Actividad Académica.
  \[Cadena De Texto\]

- AMBIENTE:

  Lugar Donde Se Realiza La Actividad Académica. \[Cadena De Texto\]

- HORARIO:

  Se Hace Referencia Al Horario De La Actividad Académica. \[Cadena De
  Texto\]

- HORAS:

  Se Hace Referencia A La Cantidad De Horas Cronológicas. \[Numérico\]

- CERTIFICACION:

  Hace Referencia A La Certificación A Emitir(Certificado, Constancia O
  Ninguno) \[Cadena De Texto\]

- MODALIDA:

  Hace Referencia A La Modalidad Presencial, Semipresencial O Virtual.
  \[Cadena De Texto\]

- NRO_SESI:

  Cantidad De Sesiones Que Tiene Una Actividad Académica. \[Numérico\]

- META:

  Hace Referencia A La Cantidad De Participantes Que Se Estima
  Capacitar. \[Numérico\]

## Examples

``` r
if (FALSE) { # \dontrun{
df <- oefa_get_activ_afa_36113(limit = 10)
} # }
```
