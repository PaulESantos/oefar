# Descargar dataset: Actividades AFA

Descarga los datos del conjunto de datos 'Actividades AFA' del OEFA por
su GUID (ACTIV-AFA). Pertenece a la sección del Diccionario de Datos:
Politicas y Estrategias \> Fortalecimiento de capacidades en
fiscalización ambiental.

## Usage

``` r
oefa_get_activ_afa(
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

  Hace Referencia A La Modadlidad Presencial, Semipresencial O Virtual.
  \[Cadena De Texto\]

- NRO_SESI:

  Cantidad De Sesiones Que Tiene Una Actividad Académica. \[Numérico\]

- META:

  Hace Referencia A La Cantidad De Participantes Que Se Estima
  Capacitar. \[Numérico\]
