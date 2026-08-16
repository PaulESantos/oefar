# Descargar dataset: Registros actos administrativos 2021-2025

Descarga los datos del conjunto de datos 'Registros actos
administrativos 2021-2025' del OEFA por su GUID
(REGIS-ACTOS-ADMIN-96376). Pertenece a la sección del Diccionario de
Datos: Fiscalización Ambiental \> Apelaciones Resueltas.

## Usage

``` r
oefa_get_regis_actos_admin_96376(
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

- NRO_EXPE:

  Número de Expediente Indicado en la Resolución Correspondiente
  \[Cadena De Texto\]

- RAZON_SO:

  Persona Natural O Jurídica, Así Como Cualquier Otra Forma Asociativa
  De Empresa O Patrimonio Autónomo, Que Desarrolla Una Actividad
  Económica, Servicio O Función Sujeta A Supervisión De La Autoridad De
  Supervisión. \[Cadena De Texto\]

- SECTOR:

  Sector Economico Que Corresponde (Mineria, Electricidad,
  Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) \[Cadena
  De Texto\]

- U_AMB:

  Unidad Fiscalizable Supervisada \[Cadena De Texto\]

- DEPARTAM:

  Departamento De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- PROVINCIA:

  Provincia De Localizacion De La Unidad Fiscalizable \[Cadena De
  Texto\]

- DISTRITO:

  Distrito De Localizacion De La Unidad Fiscalizable \[Cadena De Texto\]

- INF_SUPER:

  Documento Técnico Legal Aprobado Por La Autoridad De Supervisión Que
  Contiene Los Resultados De La Evaluación Del Cumplimiento De Las
  Obligaciones Fiscalizables En El Marco De Las Acciones De Supervisión.
  \[Cadena De Texto\]

- INFORME_T:

  Documento Que Contiene Los Hallazgos De Presuntas Infracciones
  Detectados Durante La Supervisión Con Su Respectivo Fundamento Técnico
  Y Legal. \[Cadena De Texto\]

- SUPERV:

  Inicio De Verificación Del Cumplimiento De Las Obligaciones
  Fiscalizables Y Funciones A Cargo De Las Efa. \[Fecha\]

- FIN_SUPERV:

  Fin De Verificación Del Cumplimiento De Las Obligaciones Fiscalizables
  Y Funciones A Cargo De Las Efa. \[Fecha\]

- INFRACCION:

  Referidas A Incidentes Y/O Emergencias Ambientales \[Cadena De Texto\]

- MEDIDA_CORR:

  Disposiciones A Través De Las Cuales Se Impone Al Administrado O La
  Administrada La Orden De Realizar Las Acciones Necesarias Para
  Revertir O Disminuir, En Lo Posible, El Efecto Nocivo Que La Conducta
  Infractora Hubiera Podido Producir En El Ambiente, Los Recursos
  Naturales Y La Salud De Las Personas. \[Cadena De Texto\]

- MEDIDA_CAU:

  Disposiciones A Través De Las Cuales Se Impone Al Administrado/A Una
  Orden Para Prevenir Un Daño Irreparable Al Ambiente, Los Recursos
  Naturales O La Salud De Las Personas, Ante La Detección De La Comisión
  De Una Presunta Infracción. \[Cadena De Texto\]

- MES_EMISION:

  Mes En Que Se Emite La Resolución \[Numérico\]

- AÑO_DE_E:

  Año En Que Se Emite La Resolución \[Numérico\]

- N°\_RESOL_ADM:

  Número de Resolución De Responsabilidad Administrativa \[Cadena De
  Texto\]

- FECHA_DE_RESOL:

  Fecha de Resolución De Responsabilidad Administrativa \[Fecha\]

- FECHA_DE_NOT:

  Fecha de Notificación De Responsabilidad Administrativa \[Fecha\]

- FECHA_DE_RE:

  Fecha De Emision De Resolución De Reconsideración \[Fecha\]

- RESOL_REC:

  Número De Resolución De Reconsideración \[Cadena De Texto\]

- FECHA_DE_RESOL2:

  Fecha de Emisión de Resolución de Reconsideración \[Fecha\]

- FECHA_DE_NOT3:

  Fecha de Notificación De Resolución de Reconsideración \[Fecha\]

- SENTIDO\_:

  Conclusiones descritas en La Resolución de Reconsideración \[Cadena De
  Texto\]

- RESOL_APE:

  Nro de Resolución TFA Correspondiente \[Cadena De Texto\]

- FECHA_DE_RESOL4:

  Fecha de Resolución TFA \[Fecha\]

- SENTIDO\_:

  Sentidos Principales Indicados en Resolución \[Cadena De Texto\]

- SENTIDO\_:

  Sentidos Indicados en La Resolución de Reconsideración \[Cadena De
  Texto\]
