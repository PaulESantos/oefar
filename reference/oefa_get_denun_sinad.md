# Descargar dataset: Denuncias SINADA

Descarga los datos del conjunto de datos 'Denuncias SINADA' del OEFA por
su GUID (DENUN-SINAD). Pertenece a la sección del Diccionario de Datos:
Politicas y Estrategias \> Servicio Nacional de Denuncias Ambientales.

## Usage

``` r
oefa_get_denun_sinad(
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

- COD_SINADA:

  Codificación Única Correspondiente A La Denuncia Ambiental Registrada
  En El Sistema Informático Del Sinada. \[Cadena De Texto\]

- RECEPCION:

  Corresponde Al Medio Utilizado Para Comunicar La Denuncia Ambiental Al
  Oefa, El Cual Puede Ser: Personal, Trámite Documentario, E-Mail,
  Página Web, App Móvil Y Teléfono. \[Cadena De Texto\]

- DEPARTAM:

  Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado.
  \[Cadena De Texto\]

- PROVINCIA:

  Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado.
  \[Cadena De Texto\]

- DISTRITO:

  Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado.
  \[Cadena De Texto\]

- REGISTRO:

  Fecha Correspondiente Al Registro De Una Denuncia Ambiental En El
  Sistema Informático Del Sinada. \[Fecha\]

- ACT_ECO:

  Corresponde A La Actividad Que Estaría Ocasionando La Presunta
  Contaminación Ambiental. \[Cadena De Texto\]

- AGUA:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- AIRE:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- SUELO:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- FAUNA:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- FLORA:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- POBLACIO:

  Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados
  Por La Presunta Contaminación Ambiental. \[Booleano\]

- EFLUENTE:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- RESIDUOS:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- GASES/HUMO:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- MATERIAL:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- TALA:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- RADIACIO:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- VISUAL:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- SONORA:

  Indica El O Los Agentes Contaminantes Impactantes Sobre Los
  Componentes Ambientales. \[Booleano\]

- INDIRECT:

  Se Refiere A La Competenca De Atención De La Denuncia, La Cual Puede
  Ser Directa (Oefa), Indirecta (Efa), Y Mixta (Oefa Y Efa). \[Cadena De
  Texto\]

- ESTADO:

  Los Estados Son Los Siguientes: I)Derivada: Cuando La Denuncia Ha Sido
  Registrada Y Derivada Al Órgano Del Oefa; Ii) En Seguimiento: Cuando
  Se Haya Oficiado A La(S) Efa O Cuando El Órgano De Línea O La Efa
  Comunique Acciones; Iii) Archivada: En Los Casos Que Se Determine Que
  La Denuncia No Es Ambiental, Los Datos Proporcionados Resulten
  Insuficientes, Se Establezca Denuncia Maliciosa O Cuando Se Determine
  Que No Hay Una Efa Competente; Y Iv) Cerrada: Cuando Se De Por
  Atendida La Denuncia Ambiental (No Hallazgo De Incumplimientos O
  Inicio De Pas). \[Cadena De Texto\]
