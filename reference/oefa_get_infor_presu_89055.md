# Descargar dataset: Información presupuestal

Descarga los datos del conjunto de datos 'Información presupuestal' del
OEFA por su GUID (INFOR-PRESU-89055). Pertenece a la sección del
Diccionario de Datos: Información Institucional \> Información
presupuestal.

## Usage

``` r
oefa_get_infor_presu_89055(
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

- FINANCIAMIENT:

  Nomenclatura Y Definicion De Fuentes De Financiamiento \[Cadena De
  Texto\]

- GASTO:

  Categoria De Gasto Asignada \[Cadena De Texto\]

- GENERICA:

  Categoria De Gasto Que Corresponde A Los Creditos Presupuestarios
  Agrupados En Gastos Corrientes, Gastos De Capital Y El Servicio De
  Deuda \[Cadena De Texto\]

- SEC_FUNC:

  Identificacion Correlativa De La Meta Asignada A Nivel De Unidad
  Ejecutora \[Entero\]

- PRESUP:

  Categoria Presupuestal Que Comprende Los Elementos Relacionados A La
  Metodologia Del Presupuesto \[Cadena De Texto\]

- PRESUP_AGR:

  Categoria Presupuestaria Agregrada \[Cadena De Texto\]

- AREA_IP:

  Organo/Direccion Que Cuenta Con El Presupuesto \[Cadena De Texto\]

- CLASIFIC:

  Codificacion Que Permite El Registro Ordenado Y Uniforme De Las
  Operaciones Del Sector Publico \[Cadena De Texto\]

- DETALLE_C:

  Descripción Del Clasificador De Gasto \[Cadena De Texto\]

- PIA:

  Presupuesto Inicial De La Entidad Aprobado Por El Titular De La
  Entidad Con Cargo A Los Creditos Presupuestarios Establecidos En La
  Ley Anual De Presupuesto Del Sector Publico \[Entero\]

- PIM:

  Presupuesto Actualizado De La Entidad Como Consecuencia De Las
  Modificaciones Presupuestarias Efectuadas Durante El Año Fiscal A
  Partir Del Pia \[Entero\]

- ENERO:

  Ejecución Del Mes De Enero \[Entero\]

- FEBRERO:

  Ejecución Del Mes De Febrero \[Entero\]

- MARZO:

  Ejecución Del Mes De Marzo \[Entero\]

- ABRIL:

  Ejecución Del Mes De Abril \[Entero\]

- MAYO:

  Ejecución Del Mes De Mayo \[Entero\]

- JUNIO:

  Ejecución Del Mes De Junio \[Entero\]

- JULIO:

  Ejecución Del Mes De Julio \[Entero\]

- AGOSTO:

  Ejecución Del Mes De Agosto \[Entero\]

- SETIEMBR:

  Ejecución Del Mes De Setiembre \[Entero\]

- OCTUBRE:

  Ejecución Del Mes De Octubre \[Entero\]

- NOVIEMBR:

  Ejecución Del Mes De Noviembre \[Entero\]

- DICIEMBR:

  Ejecución Del Mes De Diciembre \[Entero\]

- EJEC_1T:

  Presupuesto Ejecutado Al Primer Trimestre \[Entero\]

- EJEC_2T:

  Presupuesto Ejecutado En El Segundo Trimestre \[Entero\]

- EJEC_3T:

  Presupuesto Ejecutado En El Tercer Trimestre \[Entero\]

- EJEC_4T:

  Presupuesto Ejecutado En El Cuarto Trimestre \[Entero\]
