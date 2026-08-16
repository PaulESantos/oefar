# Funciones especificas dedicadas para los 98 conjuntos de datos del OEFA



#' Descargar dataset: Denuncias SINADA
#'
#' @description
#' Descarga los datos del conjunto de datos 'Denuncias SINADA' del OEFA por su GUID (DENUN-SINAD).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Servicio Nacional de Denuncias Ambientales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{COD_SINADA}{Codificación Única Correspondiente A La Denuncia Ambiental Registrada En El Sistema Informático Del Sinada. [Cadena De Texto]}
#'   \item{RECEPCION}{Corresponde Al Medio Utilizado Para Comunicar La Denuncia Ambiental Al Oefa, El Cual Puede Ser: Personal, Trámite Documentario, E-Mail, Página Web, App Móvil Y Teléfono. [Cadena De Texto]}
#'   \item{DEPARTAM}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{PROVINCIA}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{DISTRITO}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{REGISTRO}{Fecha Correspondiente Al Registro De Una Denuncia Ambiental En El Sistema Informático Del Sinada. [Fecha]}
#'   \item{ACT_ECO}{Corresponde A La Actividad Que Estaría Ocasionando La Presunta Contaminación Ambiental. [Cadena De Texto]}
#'   \item{AGUA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{AIRE}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{SUELO}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{FAUNA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{FLORA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{POBLACIO}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{EFLUENTE}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{RESIDUOS}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{GASES/HUMO}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{MATERIAL}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{TALA}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{RADIACIO}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{VISUAL}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{SONORA}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{INDIRECT}{Se Refiere A La Competenca De Atención De La Denuncia, La Cual Puede Ser Directa (Oefa), Indirecta (Efa), Y Mixta (Oefa Y Efa). [Cadena De Texto]}
#'   \item{ESTADO}{Los Estados Son Los Siguientes: I)Derivada: Cuando La Denuncia Ha Sido Registrada Y Derivada Al Órgano Del Oefa; Ii) En Seguimiento: Cuando Se Haya Oficiado A La(S) Efa O Cuando El Órgano De Línea O La Efa Comunique Acciones; Iii) Archivada: En Los Casos Que Se Determine Que La Denuncia No Es Ambiental, Los Datos Proporcionados Resulten Insuficientes, Se Establezca Denuncia Maliciosa O Cuando Se Determine Que No Hay Una Efa Competente; Y Iv) Cerrada: Cuando Se De Por Atendida La Denuncia Ambiental (No Hallazgo De Incumplimientos O Inicio De Pas). [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_denun_sinad <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "DENUN-SINAD", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos OEFA
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos Normativos OEFA' del OEFA por su GUID (PROYE-NORMA-OEFA).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Proyectos normativos del OEFA.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MEJ_REG}{Denominación Del Proyecto Normativo [Cadena De Texto]}
#'   \item{ANALISIS_CR}{Indica Si El Proyecto Normativo Requiere Pasar Por Un Proceso De Análisis De Calidad Regulatoria (Ria) [Cadena De Texto]}
#'   \item{RCD_DE_PNOR}{Número De Resolución Mediante La Cual Se Publica En Proyecto Normativo [Cadena De Texto]}
#'   \item{FECHA_PNOR}{Fecha De La Resolución De Publicación Del Proyecto Normativo [Fecha]}
#'   \item{PARTICIP}{Indica Si El Proyecto Contó Con Una Etapa De Participación Ciudadana [Booleano]}
#'   \item{N°_COMEN}{Número De Personas Que Participaron En El Proceso De Participación Ciudadana Mediante La Emisión De Comentarios [Numérico]}
#'   \item{COMENT_R}{Cantidad De Comentarios Que Se Recibieron De Parte De La Ciudadanía Respecto Al Proyecto Normativo [Numérico]}
#'   \item{COMENT_A}{Cantidad De Comentarios Que Tuvieron Incidencia En La Norma, Generando Alguna Modificación, Precisión O Mejora Al Proyecto Normativo [Numérico]}
#'   \item{RCD_NOR}{Número De Resolución Mediante La Cual Se Publica La Norma Aprobada [Numérico]}
#'   \item{FECHA_NOR}{Fecha De La Resolución De Publicación De La Norma [Fecha]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_norma_oefa <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-OEFA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos Externos
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos Normativos Externos' del OEFA por su GUID (PROYE-NORMA-EXTER).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Opiniones técnicas a proyectos normativos.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{ORIGEN}{Procedencia Del Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{TEMA}{Denominación Del Proyectos Normativo Externo [Cadena De Texto]}
#'   \item{JERARQUI}{Rango O Tipo Del Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{RESPONSAB}{Órganos O Áreas Del Oefa Responsables De Formular La Opinión Al Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{FECHA_ING}{Fecha En Que Ingresa El Proyecto Normativo Externo A La Smer, Para La Emisión De Una Opinión Técnica [Fecha]}
#'   \item{FECHA_RE}{Fecha En La Que La Opnión Formulada Respecto Al Proyecto Normativo Externo Se Remite Desde La Smer, Ya Sea Por Informe O Por Correo, Y Este Se Considera Como Atendido [Fecha]}
#'   \item{CANT_PROY}{Cantidad De Artículos En Los Cuales Se Formularon Recomendaciones Como Institución, A Incorporar En El Proyecto Normativo Externo [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_norma_exter <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-EXTER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de supervisión 2018
#'
#' @description
#' Descarga los datos del conjunto de datos 'Informes de supervisión 2018' del OEFA por su GUID (INFOR-DE-LA-COORD-AGRIC).
#' Pertenece a la sección del Diccionario de Datos: Supervisión ambiental > Supervisiones concluidas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{COORDINAC}{Coordinacion Responsable De La Supervisión [Cadena De Texto]}
#'   \item{MES_SUPERV}{Mes De Ejecución De La Supervisión [Cadena De Texto]}
#'   \item{NRO_EXPE}{Número Del Informe De Supervisión Aprobado [Cadena De Texto]}
#'   \item{ADMINIST}{Razon Social Del Administrado [Cadena De Texto]}
#'   \item{UNIDAD}{Lugar Donde El Administrado Desarrolla Su Actividad Económica O Su Función De Fiscalización Ambiental, Sujeta A Supervisión De La Autoridad De Supervisión. Puede Comprender Uno O Más Componentes. [Cadena De Texto]}
#'   \item{ACT_FUNC}{La Actividad Está Directamente Ligada A La Noción De Producción;No Hay Producción Sin Actividad. Producir Es Crear Bienes O Suministrar Servicios Dentro De Un Proceso De Producción Que Requiere Factores (Materia Prima, Trabajo Y Capital Fijo, Entre Otros) .Las Actividades Se Clasifican Según La Competencia De Cada Sector. [Cadena De Texto]}
#'   \item{TIPO_SUPERV}{En Función De La Programación, La Supervisión Puede Ser Regular O Especial. [Cadena De Texto]}
#'   \item{UBIC_SUPERV}{Region Donde Se Desarrolló La Supervisión [Cadena De Texto]}
#'   \item{NRO_INF}{Número De Informe [Cadena De Texto]}
#'   \item{MES_APROB}{Mes En El Que Se Aprueba El Informe De Supervisión Por La Dirección [Cadena De Texto]}
#'   \item{CANT_OBLIG}{Cantidad Total De Obligaciones Verificadas Por Supervisión Y Tipo De Análisis [Numérico]}
#'   \item{NRO_MEMO}{Número Del Memorando A Dfai [Cadena De Texto]}
#'   \item{NRO_CARTA}{Número De Carta De Notificación U Oficio Al Administrado [Cadena De Texto]}
#'   \item{EMISION_CARTA}{Fecha De Aprobación Del De La Carta De Notificación U Oficio Al Administrado [Numérico]}
#'   \item{NRO_OFIC}{Número De Carta U Oficio [Cadena De Texto]}
#'   \item{NRO_MEMO}{Número De Memorando Hacia Archivo [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_infor_de_la_coord_agric <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-COORD-AGRIC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Pedidos fiscalía 2019-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Pedidos fiscalía 2019-2025' del OEFA por su GUID (PEDID-FISCA-2019-61940).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Fiscalías Especializadas en Materia Ambiental.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{TIPO_DE_PEDIDO}{Tipo De Pedido Solicitado Por Las Fiscalias [Cadena De Texto]}
#'   \item{AMERITA_}{Indica Si El Pedido Solicitado Amerita Respuesta [Booleano]}
#'   \item{DOCUMENT}{Oficio Recibido De Fiscalia [Cadena De Texto]}
#'   \item{FECHA_OEFA}{Fecha Que El Documento Ingresa A Oefa [Fecha]}
#'   \item{REMITENT}{Fiscalia Que Remite El Oficio [Cadena De Texto]}
#'   \item{SECTOR}{Sector Al Que Pertenece El Delito [Cadena De Texto]}
#'   \item{PLAZO_FI}{Plazo Indicado Por Fiscalia [Fecha]}
#'   \item{DOC_EMITIDO}{Tipo De Documento Con El Que Se Absuelve El Requrimiento De Fiscalia [Cadena De Texto]}
#'   \item{NRO_INF}{Número De Informe U Oficio [Cadena De Texto]}
#'   \item{FECHA_EM}{Fecha En La Que Sale El Informe U Oficio [Fecha]}
#'   \item{OFICIO_SEFA}{Oficio Con El Que Se Envia El Informe [Cadena De Texto]}
#'   \item{FECHA_RE}{Fecha Con La Que Sale El Oficio De Remision [Fecha]}
#'   \item{ESTADO}{Estado En El Que Se Encuentra El Pedido Solictado [Cadena De Texto]}
#'   \item{DILIGENC}{Indica Si Se Realiza Diligencia [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_pedid_fisca_2019_61940 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PEDID-FISCA-2019-61940", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos TI
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos TI' del OEFA por su GUID (PROYE-TI-69998).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Acciones estratégicas en TI.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{AÑO_PROY}{Año Correspondiente Al Proyecto [Numérico]}
#'   \item{CATEGORIA}{Categoria De Implementacion De Proyecto [Cadena De Texto]}
#'   \item{PROYECTO}{Nombre Del Proyecto [Cadena De Texto]}
#'   \item{PORCENTA}{Porcentaje De Ejecucion Del Proyecto [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_ti_69998 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-TI-69998", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Seguidores en redes sociales
#'
#' @description
#' Descarga los datos del conjunto de datos 'Seguidores en redes sociales' del OEFA por su GUID (SEGUI-EN-REDES-SOCIA).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Interacción en redes sociales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MES}{Detalla El Mes En El Que Incorporan Nuevos Seguidores A Las Redes Sociales [Cadena De Texto]}
#'   \item{RED_SOCI}{Indica En Qué Red Social Se Suman Nuevos Seguidores [Cadena De Texto]}
#'   \item{SEGUIDOR}{Indica La Cantidad De Nuevos Seguidores [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_segui_en_redes_socia <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEGUI-EN-REDES-SOCIA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procesos de selección de personal
#'
#' @description
#' Descarga los datos del conjunto de datos 'Procesos de selección de personal' del OEFA por su GUID (PROCE-DE-SELEC-DE-71611).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Personal.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{REGISTRO}{Número Correlativo Que Hace Referncia A Una Convocatoria Una Convocatoria Cas [Entero]}
#'   \item{AÑO_SELEC}{Año Que Inició Sus Labores En La Institución [Cadena De Texto]}
#'   \item{MES}{Mes Que Inició Sus Labores En La Institución [Cadena De Texto]}
#'   \item{ESTADO}{Estado Del Proceso De Selección [Cadena De Texto]}
#'   \item{AREA_SELEC}{A Que Área Pertenece Cada Proceso [Cadena De Texto]}
#'   \item{CANT_SELEC}{Total De Plazas [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proce_de_selec_de_71611 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-SELEC-DE-71611", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Aporte por regulación
#'
#' @description
#' Descarga los datos del conjunto de datos 'Aporte por regulación' del OEFA por su GUID (APORT-POR-REGUL-80624).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Recaudación.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{RESOL_APE}{Número De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{AÑO_EC}{Año De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{ESTADO}{Estado De Expediente Coactivo [Cadena De Texto]}
#'   \item{IMPORTE_}{Importe Cancelado [Entero]}
#'   \item{SECTOR}{Sector Económico [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_aport_por_regul_80624 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "APORT-POR-REGUL-80624", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procedimientos de ejecución coactiva: Multas ambientales
#'
#' @description
#' Descarga los datos del conjunto de datos 'Procedimientos de ejecución coactiva: Multas ambientales' del OEFA por su GUID (PROCE-DE-EJECU-COACT-14377).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Recaudación.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{RESOL_EC}{Número De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{AÑO_REC}{Año De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{TITULO_EC}{Número De La Resolución Generador De La Obligación [Cadena De Texto]}
#'   \item{MULTA_UIT}{Multa En Unidades Impositivas Tributarias [Entero]}
#'   \item{SECTOR}{Sector Económico [Cadena De Texto]}
#'   \item{IMPORTE_}{Importe Cancelado [Entero]}
#'   \item{ESTADO}{Estado [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proce_de_ejecu_coact_14377 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-EJECU-COACT-14377", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procedimientos de ejecución coactiva: Aporte por regulación
#'
#' @description
#' Descarga los datos del conjunto de datos 'Procedimientos de ejecución coactiva: Aporte por regulación' del OEFA por su GUID (PROCE-DE-EJECU-COACT-70031).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Recaudación.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{RESOL_APE}{Número De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{AÑO_EC}{Año De La Resolución De Ejecución Coactiva [Entero]}
#'   \item{ESTADO}{Estado De Expediente Coactivo [Cadena De Texto]}
#'   \item{IMPORTE_}{Importe Cancelado [Entero]}
#'   \item{SECTOR}{Sector Económico [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proce_de_ejecu_coact_70031 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-EJECU-COACT-70031", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Información presupuestal
#'
#' @description
#' Descarga los datos del conjunto de datos 'Información presupuestal' del OEFA por su GUID (INFOR-PRESU-89055).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Información presupuestal.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{FINANCIAMIENT}{Nomenclatura Y Definicion De Fuentes De Financiamiento [Cadena De Texto]}
#'   \item{GASTO}{Categoria De Gasto Asignada [Cadena De Texto]}
#'   \item{GENERICA}{Categoria De Gasto Que Corresponde A Los Creditos Presupuestarios Agrupados En Gastos Corrientes, Gastos De Capital Y El Servicio De Deuda [Cadena De Texto]}
#'   \item{SEC_FUNC}{Identificacion Correlativa De La Meta Asignada A Nivel De Unidad Ejecutora [Entero]}
#'   \item{PRESUP}{Categoria Presupuestal Que Comprende Los Elementos Relacionados A La Metodologia Del Presupuesto [Cadena De Texto]}
#'   \item{PRESUP_AGR}{Categoria Presupuestaria Agregrada [Cadena De Texto]}
#'   \item{AREA_IP}{Organo/Direccion Que Cuenta Con El Presupuesto [Cadena De Texto]}
#'   \item{CLASIFIC}{Codificacion Que Permite El Registro Ordenado Y Uniforme De Las Operaciones Del Sector Publico [Cadena De Texto]}
#'   \item{DETALLE_C}{Descripción Del Clasificador De Gasto [Cadena De Texto]}
#'   \item{PIA}{Presupuesto Inicial De La Entidad Aprobado Por El Titular De La Entidad Con Cargo A Los Creditos Presupuestarios Establecidos En La Ley Anual De Presupuesto Del Sector Publico [Entero]}
#'   \item{PIM}{Presupuesto Actualizado De La Entidad Como Consecuencia De Las Modificaciones Presupuestarias Efectuadas Durante El Año Fiscal A Partir Del Pia [Entero]}
#'   \item{ENERO}{Ejecución Del Mes De Enero [Entero]}
#'   \item{FEBRERO}{Ejecución Del Mes De Febrero [Entero]}
#'   \item{MARZO}{Ejecución Del Mes De Marzo [Entero]}
#'   \item{ABRIL}{Ejecución Del Mes De Abril [Entero]}
#'   \item{MAYO}{Ejecución Del Mes De Mayo [Entero]}
#'   \item{JUNIO}{Ejecución Del Mes De Junio [Entero]}
#'   \item{JULIO}{Ejecución Del Mes De Julio [Entero]}
#'   \item{AGOSTO}{Ejecución Del Mes De Agosto [Entero]}
#'   \item{SETIEMBR}{Ejecución Del Mes De Setiembre [Entero]}
#'   \item{OCTUBRE}{Ejecución Del Mes De Octubre [Entero]}
#'   \item{NOVIEMBR}{Ejecución Del Mes De Noviembre [Entero]}
#'   \item{DICIEMBR}{Ejecución Del Mes De Diciembre [Entero]}
#'   \item{EJEC_1T}{Presupuesto Ejecutado Al Primer Trimestre [Entero]}
#'   \item{EJEC_2T}{Presupuesto Ejecutado En El Segundo Trimestre [Entero]}
#'   \item{EJEC_3T}{Presupuesto Ejecutado En El Tercer Trimestre [Entero]}
#'   \item{EJEC_4T}{Presupuesto Ejecutado En El Cuarto Trimestre [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_infor_presu_89055 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-PRESU-89055", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos de inversión
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos de inversión' del OEFA por su GUID (PROYE-DE-INVER).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Información presupuestal.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{INVERSION}{Descripción De La Inversion [Cadena De Texto]}
#'   \item{CODIGO}{Código Único De Registro [Entero]}
#'   \item{MONTO_INV}{Monto De La Inversion [Entero]}
#'   \item{EST_SIT}{Estado Situacional Del Proyecto [Cadena De Texto]}
#'   \item{EST_SIT_C}{Estado Situacional Agrupado Por Categoría [Cadena De Texto]}
#'   \item{INTERVENC}{Area De Intervención Del Proyecto [Cadena De Texto]}
#'   \item{OBSERVAC}{Observaciones [Cadena De Texto]}
#'   \item{\%PI_MONTO_INV}{Porcentaje Que Representa El Proyecto Respecto Al Total De Inversiones [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_de_inver <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-DE-INVER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Publicaciones en redes sociales
#'
#' @description
#' Descarga los datos del conjunto de datos 'Publicaciones en redes sociales' del OEFA por su GUID (PUBLI-EN-REDES-SOCIA-45921).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Interacción en redes sociales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MES}{Indica El Mes En El Que Se Hace La Publicación En La Red Social [Cadena De Texto]}
#'   \item{FECHA}{Indica La Fecha En La Que Se Hace La Publicación En La Red Social [Fecha]}
#'   \item{PUBLIC}{Especiica El Tipo De Publicación Que Se Hace En La Red Social [Cadena De Texto]}
#'   \item{TEMA}{Especifica El Tema De La Publicación [Cadena De Texto]}
#'   \item{RED_SOCI}{Especifica En Qué Red Social Se Hace La Mención [Cadena De Texto]}
#'   \item{VISITAS_}{Detalla El Número De Visitas Hecha A La Publicación Pr Los Usuarios [Entero]}
#'   \item{N°_VECES}{La Cantidad De Veces Que Se Comparte La Publicación [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_publi_en_redes_socia_45921 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PUBLI-EN-REDES-SOCIA-45921", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Seguidores en redes sociales 2
#'
#' @description
#' Descarga los datos del conjunto de datos 'Seguidores en redes sociales 2' del OEFA por su GUID (SEGUI-EN-REDES-SOCIA-87207).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Interacción en redes sociales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MES}{Detalla El Mes En El Que Incorporan Nuevos Seguidores A Las Redes Sociales [Cadena De Texto]}
#'   \item{RED_SOCI}{Indica En Qué Red Social Se Suman Nuevos Seguidores [Cadena De Texto]}
#'   \item{SEGUIDOR}{Indica La Cantidad De Nuevos Seguidores [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_segui_en_redes_socia_87207 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEGUI-EN-REDES-SOCIA-87207", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Aporte por regulación 2
#'
#' @description
#' Descarga los datos del conjunto de datos 'Aporte por regulación 2' del OEFA por su GUID (APORT-POR-REGUL-66627).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Recaudación.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{AÑO_REG}{Año Correspondiente Al Aporte [Cadena De Texto]}
#'   \item{MES}{Mes Correspondiente Al Aporte [Cadena De Texto]}
#'   \item{R.U.C.}{R.U.C. Correspondiente Al Aportante [Numérico]}
#'   \item{RAZON_SO}{Razon Social Correspondiente Al Aportante [Cadena De Texto]}
#'   \item{SECTOR}{Sector Económico Correspondiente Al Aportante [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_aport_por_regul_66627 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "APORT-POR-REGUL-66627", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Actividades Afa 2018-2024
#'
#' @description
#' Descarga los datos del conjunto de datos 'Actividades Afa 2018-2024' del OEFA por su GUID (ACTIV-AFA-36113).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Fortalecimiento de capacidades en fiscalización ambiental.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{INICIO}{Se Hace Referencia A La Fecha De Inicio De La Actividad Académica. [Fecha]}
#'   \item{FECHA_FIN}{Se Hace Referencia A La Fecha De Termino De Actividad Académica. [Fecha]}
#'   \item{ACTIVIDAD}{Se Hace Referencia A: Programa De Formación, Cursos Y Jornadas Académicas. [Cadena De Texto]}
#'   \item{SUB_TIPO}{Hace Referencia A Subgrupos Programa De Formación(Diplomado, Programa Actualización, Pasantías, Curso De Extensión Universitaria), Cursos(Curso Básico, Curso Taller O Curso De Especialización), Jornadas Académicas(Taller, Charlas, Conferencias, Cátedras,Asistencia Técnica) [Cadena De Texto]}
#'   \item{EVENTO}{Corresponde Al Nombre De La Actividad Académica. [Cadena De Texto]}
#'   \item{DESTINAT}{Se Hace Referencia A: Colaboradores Del Oefa, Funcionarios Públicos, Administrados Y Ciudadanos [Cadena De Texto]}
#'   \item{DEPARTAM}{Corresponde Al Departamento Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{PROVINCIA}{Corresponde A La Provincia Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{CIUDAD}{Corresponde A La Ciudad Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{AMBIENTE}{Lugar Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{HORARIO}{Se Hace Referencia Al Horario De La Actividad Académica. [Cadena De Texto]}
#'   \item{HORAS}{Se Hace Referencia A La Cantidad De Horas Cronológicas. [Numérico]}
#'   \item{CERTIFICACION}{Hace Referencia A La Certificación A Emitir(Certificado, Constancia O Ninguno) [Cadena De Texto]}
#'   \item{MODALIDA}{Hace Referencia A La Modadlidad Presencial, Semipresencial O Virtual. [Cadena De Texto]}
#'   \item{NRO_SESI}{Cantidad De Sesiones Que Tiene Una Actividad Académica. [Numérico]}
#'   \item{META}{Hace Referencia A La Cantidad De Participantes Que Se Estima Capacitar. [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_activ_afa_36113 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ACTIV-AFA-36113", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos Externos 2018-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos Normativos Externos 2018-2025' del OEFA por su GUID (PROYE-NORMA-EXTER-65772).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Opiniones técnicas a proyectos normativos.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{ORIGEN}{Procedencia Del Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{TEMA}{Denominación Del Proyectos Normativo Externo [Cadena De Texto]}
#'   \item{JERARQUI}{Rango O Tipo Del Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{RESPONSAB}{Órganos O Áreas Del Oefa Responsables De Formular La Opinión Al Proyecto Normativo Externo [Cadena De Texto]}
#'   \item{FECHA_ING}{Fecha En Que Ingresa El Proyecto Normativo Externo A La Smer, Para La Emisión De Una Opinión Técnica [Fecha]}
#'   \item{FECHA_RE}{Fecha En La Que La Opnión Formulada Respecto Al Proyecto Normativo Externo Se Remite Desde La Smer, Ya Sea Por Informe O Por Correo, Y Este Se Considera Como Atendido [Fecha]}
#'   \item{CANT_PROY}{Cantidad De Artículos En Los Cuales Se Formularon Recomendaciones Como Institución, A Incorporar En El Proyecto Normativo Externo [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_norma_exter_65772 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-EXTER-65772", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos OEFA 2018-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Proyectos Normativos OEFA 2018-2025' del OEFA por su GUID (PROYE-NORMA-OEFA-64027).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Proyectos normativos del OEFA.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MEJ_REG}{Denominación Del Proyecto Normativo [Cadena De Texto]}
#'   \item{ANALISIS_CR}{Indica Si El Proyecto Normativo Requiere Pasar Por Un Proceso De Análisis De Calidad Regulatoria (Ria) [Cadena De Texto]}
#'   \item{RCD_DE_PNOR}{Número De Resolución Mediante La Cual Se Publica En Proyecto Normativo [Cadena De Texto]}
#'   \item{FECHA_PNOR}{Fecha De La Resolución De Publicación Del Proyecto Normativo [Fecha]}
#'   \item{PARTICIP}{Indica Si El Proyecto Contó Con Una Etapa De Participación Ciudadana [Booleano]}
#'   \item{N°_COMEN}{Número De Personas Que Participaron En El Proceso De Participación Ciudadana Mediante La Emisión De Comentarios [Numérico]}
#'   \item{COMENT_R}{Cantidad De Comentarios Que Se Recibieron De Parte De La Ciudadanía Respecto Al Proyecto Normativo [Numérico]}
#'   \item{COMENT_A}{Cantidad De Comentarios Que Tuvieron Incidencia En La Norma, Generando Alguna Modificación, Precisión O Mejora Al Proyecto Normativo [Numérico]}
#'   \item{RCD_NOR}{Número De Resolución Mediante La Cual Se Publica La Norma Aprobada [Numérico]}
#'   \item{FECHA_NOR}{Fecha De La Resolución De Publicación De La Norma [Fecha]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_proye_norma_oefa_64027 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-OEFA-64027", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Denuncias SINADA 2019-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Denuncias SINADA 2019-2025' del OEFA por su GUID (DENUN-SINAD-61293).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Servicio Nacional de Denuncias Ambientales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{COD_SINADA}{Codificación Única Correspondiente A La Denuncia Ambiental Registrada En El Sistema Informático Del Sinada. [Cadena De Texto]}
#'   \item{RECEPCION}{Corresponde Al Medio Utilizado Para Comunicar La Denuncia Ambiental Al Oefa, El Cual Puede Ser: Personal, Trámite Documentario, E-Mail, Página Web, App Móvil Y Teléfono. [Cadena De Texto]}
#'   \item{DEPARTAM}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{PROVINCIA}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{DISTRITO}{Se Hace Referencia A La Ubicación Geográfica Del Hecho Denunciado. [Cadena De Texto]}
#'   \item{REGISTRO}{Fecha Correspondiente Al Registro De Una Denuncia Ambiental En El Sistema Informático Del Sinada. [Fecha]}
#'   \item{ACT_ECO}{Corresponde A La Actividad Que Estaría Ocasionando La Presunta Contaminación Ambiental. [Cadena De Texto]}
#'   \item{AGUA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{AIRE}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{SUELO}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{FAUNA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{FLORA}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{POBLACIO}{Indica El O Los Componentes Ambientales (Cuerpo Receptor) Afectados Por La Presunta Contaminación Ambiental. [Booleano]}
#'   \item{EFLUENTE}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{RESIDUOS}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{GASES/HUMO}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{MATERIAL}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{TALA}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{RADIACIO}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{VISUAL}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{SONORA}{Indica El O Los Agentes Contaminantes Impactantes Sobre Los Componentes Ambientales. [Booleano]}
#'   \item{INDIRECT}{Se Refiere A La Competenca De Atención De La Denuncia, La Cual Puede Ser Directa (Oefa), Indirecta (Efa), Y Mixta (Oefa Y Efa). [Cadena De Texto]}
#'   \item{ESTADO}{Los Estados Son Los Siguientes: I)Derivada: Cuando La Denuncia Ha Sido Registrada Y Derivada Al Órgano Del Oefa; Ii) En Seguimiento: Cuando Se Haya Oficiado A La(S) Efa O Cuando El Órgano De Línea O La Efa Comunique Acciones; Iii) Archivada: En Los Casos Que Se Determine Que La Denuncia No Es Ambiental, Los Datos Proporcionados Resulten Insuficientes, Se Establezca Denuncia Maliciosa O Cuando Se Determine Que No Hay Una Efa Competente; Y Iv) Cerrada: Cuando Se De Por Atendida La Denuncia Ambiental (No Hallazgo De Incumplimientos O Inicio De Pas). [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_denun_sinad_61293 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "DENUN-SINAD-61293", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones directorales 2018-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Resoluciones directorales 2018-2025' del OEFA por su GUID (RESOL-DIREC-50309).
#' Pertenece a la sección del Diccionario de Datos: Fiscalización Ambiental > Resoluciones Emitidas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{N°_RESOL}{Número De Resolución Directoral Correspondiente [Cadena De Texto]}
#'   \item{FECHA_RD}{Fecha de Resolución Directoral [Fecha]}
#'   \item{NRO_EXPE}{Número de Expediente de RD [Cadena De Texto]}
#'   \item{SECTOR}{Sector Economico Que Corresponde (Mineria, Electricidad, Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) [Cadena De Texto]}
#'   \item{RAZON_SO}{Razon Social Del Administrado [Cadena De Texto]}
#'   \item{U_AMB}{Unidad Fiscalizable Supervisada [Cadena De Texto]}
#'   \item{DEPARTAM}{Departamento De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{PROVINCIA}{Provincia De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{DISTRITO}{Distrito De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{TIPO_RD}{Tipo De Rd [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_resol_direc_50309 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-DIREC-50309", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones subdirectorales 2018-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Resoluciones subdirectorales 2018-2025' del OEFA por su GUID (RESOL-SUBDI).
#' Pertenece a la sección del Diccionario de Datos: Fiscalización Ambiental > Resoluciones Emitidas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{N°_RESOL}{Número De La Resolución Subdirectoral [Cadena De Texto]}
#'   \item{FECHA_RSD}{Fecha De Emision De La Resolución Subdirectoral [Fecha]}
#'   \item{NRO_EXPE}{Número De Expediente De La Dfai [Cadena De Texto]}
#'   \item{SECTOR}{Sector Economico Que Corresponde (Mineria, Electricidad, Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) [Cadena De Texto]}
#'   \item{INFORME_}{Tipo De Informe (Informe De Supervision O Informe Tecnico Acusatorio) [Cadena De Texto]}
#'   \item{NRO_INF}{Número De Informe [Cadena De Texto]}
#'   \item{SUPERV}{Fecha De Inicio De La Supervision [Fecha]}
#'   \item{RAZON_SO}{Nombre De La Razon Social Del Administrado [Cadena De Texto]}
#'   \item{UNIDAD}{Unidad Fiscalizable Supervisada [Cadena De Texto]}
#'   \item{DEPARTAM}{Departamento De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{PROVINCIA}{Provincia De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{DISTRITO}{Distrito De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{TIPO_RSD}{Sentido Legal De La Resolución Subdirectoral [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_resol_subdi <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-SUBDI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Registros actos administrativos 2021-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Registros actos administrativos 2021-2025' del OEFA por su GUID (REGIS-ACTOS-ADMIN-96376).
#' Pertenece a la sección del Diccionario de Datos: Fiscalización Ambiental > Apelaciones Resueltas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_EXPE}{Número de Expediente Indicado en la Resolución Correspondiente [Cadena De Texto]}
#'   \item{RAZON_SO}{Persona Natural O Jurídica, Así Como Cualquier Otra Forma Asociativa De Empresa O Patrimonio Autónomo, Que Desarrolla Una Actividad Económica, Servicio O Función Sujeta A Supervisión De La Autoridad De Supervisión. [Cadena De Texto]}
#'   \item{SECTOR}{Sector Economico Que Corresponde (Mineria, Electricidad, Hidrocarburos, Industria, Pesca E Infraestructa Y Servicios) [Cadena De Texto]}
#'   \item{U_AMB}{Unidad Fiscalizable Supervisada [Cadena De Texto]}
#'   \item{DEPARTAM}{Departamento De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{PROVINCIA}{Provincia De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{DISTRITO}{Distrito De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{INF_SUPER}{Documento Técnico Legal Aprobado Por La Autoridad De Supervisión Que Contiene Los Resultados De La Evaluación Del Cumplimiento De Las Obligaciones Fiscalizables En El Marco De Las Acciones De Supervisión. [Cadena De Texto]}
#'   \item{INFORME_T}{Documento Que Contiene Los Hallazgos De Presuntas Infracciones Detectados Durante La Supervisión Con Su Respectivo Fundamento Técnico Y Legal. [Cadena De Texto]}
#'   \item{SUPERV}{Inicio De Verificación Del Cumplimiento De Las Obligaciones Fiscalizables Y Funciones A Cargo De Las Efa. [Fecha]}
#'   \item{FIN_SUPERV}{Fin De Verificación Del Cumplimiento De Las Obligaciones Fiscalizables Y Funciones A Cargo De Las Efa. [Fecha]}
#'   \item{INFRACCION}{Referidas A Incidentes Y/O Emergencias Ambientales [Cadena De Texto]}
#'   \item{MEDIDA_CORR}{Disposiciones A Través De Las Cuales Se Impone Al Administrado O La Administrada La Orden De Realizar Las Acciones Necesarias Para Revertir O Disminuir, En Lo Posible, El Efecto Nocivo Que La Conducta Infractora Hubiera Podido Producir En El Ambiente, Los Recursos Naturales Y La Salud De Las Personas. [Cadena De Texto]}
#'   \item{MEDIDA_CAU}{Disposiciones A Través De Las Cuales Se Impone Al Administrado/A Una Orden Para Prevenir Un Daño Irreparable Al Ambiente, Los Recursos Naturales O La Salud De Las Personas, Ante La Detección De La Comisión De Una Presunta Infracción. [Cadena De Texto]}
#'   \item{MES_EMISION}{Mes En Que Se Emite La Resolución [Numérico]}
#'   \item{AÑO_DE_E}{Año En Que Se Emite La Resolución [Numérico]}
#'   \item{N°_RESOL_ADM}{Número de Resolución De Responsabilidad Administrativa [Cadena De Texto]}
#'   \item{FECHA_DE_RESOL}{Fecha de Resolución De Responsabilidad Administrativa [Fecha]}
#'   \item{FECHA_DE_NOT}{Fecha de Notificación De Responsabilidad Administrativa [Fecha]}
#'   \item{FECHA_DE_RE}{Fecha De Emision De Resolución De Reconsideración [Fecha]}
#'   \item{RESOL_REC}{Número De Resolución De Reconsideración [Cadena De Texto]}
#'   \item{FECHA_DE_RESOL2}{Fecha de Emisión de Resolución de Reconsideración [Fecha]}
#'   \item{FECHA_DE_NOT3}{Fecha de Notificación De Resolución de Reconsideración [Fecha]}
#'   \item{SENTIDO_}{Conclusiones descritas en La Resolución de Reconsideración [Cadena De Texto]}
#'   \item{RESOL_APE}{Nro de Resolución TFA Correspondiente [Cadena De Texto]}
#'   \item{FECHA_DE_RESOL4}{Fecha de Resolución TFA [Fecha]}
#'   \item{SENTIDO_}{Sentidos Principales Indicados en Resolución [Cadena De Texto]}
#'   \item{SENTIDO_}{Sentidos Indicados en La Resolución de Reconsideración [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_regis_actos_admin_96376 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "REGIS-ACTOS-ADMIN-96376", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Expedientes resueltos 2021-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Expedientes resueltos 2021-2025' del OEFA por su GUID (EXPED-RESUE-15640).
#' Pertenece a la sección del Diccionario de Datos: Fiscalización Ambiental > Apelaciones Resueltas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{SECTOR}{Rama O División De La Actividad Económica Al Que Pertenece El Administrado. [Cadena De Texto]}
#'   \item{NRO_EXPE_ADM}{Número De Expediente Que Se Genera Al Iniciar Un Procedimiento Administrativo Sancionador [Cadena De Texto]}
#'   \item{ADMINIST}{Persona Natural O Jurídica Que Desarrolla Una Actividad Económica Sujeta Al Ámbito De Competencia Del Oefa. [Cadena De Texto]}
#'   \item{UNIDAD}{Lugar Donde El Administrado Desarrolla Su Actividad (Área Productiva, Lote, Central, Planta, Concesión, Dependencia, Entre Otros) O Su Función De Fiscalización Ambiental, Sujeta A Supervisión De La Autoridad De Supervisión. Puede Comprender Uno O Más Componentes. [Cadena De Texto]}
#'   \item{DISTRITO}{Nombre De La Provincia Donde Se Ubica De La Zona Fiscalizable [Cadena De Texto]}
#'   \item{PROVINCIA}{Nombre Del Departamento Donde Se Ubica La Zona Fiscalizable [Cadena De Texto]}
#'   \item{DEPARTAM}{Nombre Del Distrito Donde Se Ubica La Zona Fiscalizable [Cadena De Texto]}
#'   \item{RESOL_TFA}{Número De La Resolución Emitida Por El Tribunal De Fiscalización Ambiental [Cadena De Texto]}
#'   \item{FECHA_DE_RESOL}{Fecha De La Sesión En La Que Se Tomaron Los Acuerdos Correspondientes Para La Emisión De La Resolución [Fecha]}
#'   \item{RESOLVIERON}{Sentido Del Pronunciamiento Del Tfa Que Puede Confirmar, Revocar O Declarar La Nulidad, Parcial O Total, De La Resolución Apelada [Cadena De Texto]}
#'   \item{MULTA_INF}{Sanción Económica Impuesta Al Administrado Por Haber Incurrido En Infracción Administrativa [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_exped_resue_15640 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EXPED-RESUE-15640", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resolución con multa firmes 2019-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'Resolución con multa firmes 2019-2025' del OEFA por su GUID (RESOL-CON-MULTA-FIRME).
#' Pertenece a la sección del Diccionario de Datos: Fiscalización Ambiental > Resoluciones Emitidas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MES}{Mes de Imposición de Multa [Cadena De Texto]}
#'   \item{ADMINIST}{Administrado Mencionado en Resolución Corrrespondiente [Cadena De Texto]}
#'   \item{EXPEDIEN}{Número de Expediente [Cadena De Texto]}
#'   \item{AÑO_MULT}{Año de Imposición de Multa [Numérico]}
#'   \item{SECTOR}{Sector al que pertenece el Administrado [Cadena De Texto]}
#'   \item{U_AMB}{Unidad Fiscalizable Supervisada [Cadena De Texto]}
#'   \item{DEPARTAM}{Departamento [Cadena De Texto]}
#'   \item{PROVINCIA}{Provincia [Cadena De Texto]}
#'   \item{DISTRITO}{Distrito De Localizacion De La Unidad Fiscalizable [Cadena De Texto]}
#'   \item{INFRACCION}{Tipo de Multas Impuestas Por El Oefa Consideradas Como Una Obligación De Pago Por Parte Del Administrado [Cadena De Texto]}
#'   \item{RESOL_1RA}{Resolución De Primera Instancia [Cadena De Texto]}
#'   \item{RESOL_1RA}{Fecha De Emision De La Resolución De Primera Instancia [Fecha]}
#'   \item{RESOL_2DA}{Resolución De Segunda Instancia [Cadena De Texto]}
#'   \item{RESOL_2DA}{Fecha De Emision De La Resolución De Segunda Instancia [Fecha]}
#'   \item{MULTA_UIT}{Multas Expresadas en UIT [Numérico]}
#'   \item{MULTA_SO}{Multas Expresadas en Soles [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_resol_con_multa_firme <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-CON-MULTA-FIRME", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Medidas administrativas de las direcciones de supervisión
#'
#' @description
#' Descarga los datos del conjunto de datos 'Medidas administrativas de las direcciones de supervisión' del OEFA por su GUID (MEDID-ADMIN-DE-LAS-DIREC).
#' Pertenece a la sección del Diccionario de Datos: Supervisión ambiental > Medidas Administrativas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{SECTOR}{Sector [Cadena De Texto]}
#'   \item{NRO_EXPE}{Número De Expediente [Cadena De Texto]}
#'   \item{TITULAR}{Razon Social Del Administrado [Cadena De Texto]}
#'   \item{UNIDAD}{Lugar Donde El Administrado Desarrolla Su Actividad Económica O Su Función De Fiscalización Ambiental, Sujeta A Supervisión De La Autoridad De Supervisión. Puede Comprender Uno O Más Componentes. [Cadena De Texto]}
#'   \item{DET_HECHOS}{Fecha De Deteccion De Los Hechos [Fecha]}
#'   \item{NRO_RESOL}{Número De Resolución Directoral Que Dicta La Medida [Cadena De Texto]}
#'   \item{FECHA_RESOL}{Fecha En La Que Se Emite La Resolución Directoral [Cadena De Texto]}
#'   \item{DESC_MEDIDAS}{Indica El Tipo De Medida Administrativa Dictada [Cadena De Texto]}
#'   \item{T_MEDIDA}{Abreviatura De Tipo De Medida Admnistrativa [Cadena De Texto]}
#'   \item{MP}{Disposiciones A Través De Las Cuales La Autoridad De Supervisión Directa Impone A Un Administrado Una Obligación De Hacer O No Hacer, Destinada A Evitar Un Inminente Peligro O Un Alto Riesgo De Producirse Un Daño Grave Al Ambiente, Los Recursos Naturales Y La Salud De Las Personas, Así Como A Mitigar Las Causas Que Generan La Degradación O El Daño Ambiental. [Cadena De Texto]}
#'   \item{MCP}{Disposición Dictada Por La Autoridad De Supervisión A Través De La Cual Se Ordena Al Administrado Realizar Determinadas Acciones Que Tengan Como Finalidad Garantizar La Eficacia De La Fiscalización Ambiental. [Cadena De Texto]}
#'   \item{ESTADO}{Estado De La Medida Administrativa [Cadena De Texto]}
#'   \item{INF_SUPERC}{Informe De Supervisión De Cumplimiento De La Medida Admnistrativa [Cadena De Texto]}
#'   \item{NRO_RESOLV}{Número De La Resolución De Variacion [Cadena De Texto]}
#'   \item{NRO_TEC}{Número De Informe Técnico [Cadena De Texto]}
#'   \item{NRO_CONSID}{Número De Resolución De Reconsideracion [Cadena De Texto]}
#'   \item{NRO_TFA}{Número De Resolución Del Tfa Del Recurso Impugnado [Cadena De Texto]}
#'   \item{REGION}{Indica Region Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{PROVINCIA}{Indica Provincia Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{DISTRITO}{Indica Distrito Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{MANDATO}{Descripción Del Mandato [Cadena De Texto]}
#'   \item{REVOCACION}{Indica Si Revocó La Medida Administrativa [Booleano]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_medid_admin_de_las_direc <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "MEDID-ADMIN-DE-LAS-DIREC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de la Dirección de Supervisión 2019-2025
#' @inheritParams oefa_get_data
#' @export
oefa_get_infor_de_la_direc_28304 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-DIREC-28304", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de la Dirección de Supervisión 2018
#' @inheritParams oefa_get_data
#' @export
oefa_get_infor_de_la_direc_de <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-DIREC-DE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Componente ambiental Suelo' del OEFA por su GUID (EAC-COMPO-AMBIE-SUELO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Sedimento 2020-2025
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Sedimento 2020-2025' del OEFA por su GUID (EAC-SEDIM-91086).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_sedim_91086 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-SEDIM-91086", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Sedimento' del OEFA por su GUID (EAC-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Ruido
#' @inheritParams oefa_get_data
#' @export
oefa_get_eac_ruido <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-RUIDO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente Hidrobiología
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Componente Hidrobiología' del OEFA por su GUID (EAC-COMPO-HIDRO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Biota
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Biota' del OEFA por su GUID (EAC-BIOTA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_biota <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-BIOTA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Aire
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Componente ambiental Aire' del OEFA por su GUID (EAC-COMPO-AMBIE-AIRE).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAC - Componente ambiental Agua' del OEFA por su GUID (EAC-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de causalidad (EAC).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eac_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Componente Ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'IPASH - Componente Ambiental Suelo' del OEFA por su GUID (IPASH-COMPO-AMBIE-SUELO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de pasivos ambientales del subsector hidrocarburos (IPASH).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_ipash_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAS - Componente ambiental Suelo' del OEFA por su GUID (EAS-COMPO-AMBIE-SUELO-18111).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de seguimiento (EAS).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eas_compo_ambie_suelo_18111 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-SUELO-18111", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente Hidrobiología
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAS - Componente Hidrobiología' del OEFA por su GUID (EAS-COMPO-HIDRO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de seguimiento (EAS).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eas_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Aire
#' @inheritParams oefa_get_data
#' @export
oefa_get_eas_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente Hidrobiología 2
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAS - Componente Hidrobiología 2' del OEFA por su GUID (EAS-COMPO-HIDRO-66459).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de seguimiento (EAS).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eas_compo_hidro_66459 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-HIDRO-66459", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Biota
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Biota' del OEFA por su GUID (EAT-COMPO-BIOLO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_compo_biolo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-BIOLO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Componente Ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'ISIM - Componente Ambiental Suelo' del OEFA por su GUID (ISIM-COMPO-AMBIE-SUELO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de sitios impactados (ISIM).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_isim_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'ISIM - Sedimento' del OEFA por su GUID (ISIM-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de sitios impactados (ISIM).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_isim_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Hidrobiología
#'
#' @description
#' Descarga los datos del conjunto de datos 'ISIM - Hidrobiología' del OEFA por su GUID (ISIM-HIDRO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de sitios impactados (ISIM).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_isim_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Componente Ambiental Agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'ISIM - Componente Ambiental Agua' del OEFA por su GUID (ISIM-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de sitios impactados (ISIM).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_isim_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'IPASH - Sedimento' del OEFA por su GUID (IPASH-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de pasivos ambientales del subsector hidrocarburos (IPASH).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_ipash_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Componente Ambiental Agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'IPASH - Componente Ambiental Agua' del OEFA por su GUID (IPASH-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación ambiental para la identificación de pasivos ambientales del subsector hidrocarburos (IPASH).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_ipash_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAF - Componente ambiental Suelo' del OEFA por su GUID (EAF-COMPO-AMBIE-SUELO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales focales (EAF).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eaf_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAF - Sedimento' del OEFA por su GUID (EAF-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales focales (EAF).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eaf_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente Hidrobiología
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAF - Componente Hidrobiología' del OEFA por su GUID (EAF-COMPO-HIDRO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales focales (EAF).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eaf_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental Aire
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAF - Componente ambiental Aire' del OEFA por su GUID (EAF-COMPO-AMBIE-AIRE).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales focales (EAF).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eaf_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAF - Componente ambiental agua' del OEFA por su GUID (EAF-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales focales (EAF).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eaf_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Flora y Fauna
#' @inheritParams oefa_get_data
#' @export
oefa_get_eaf_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAS - Sedimento' del OEFA por su GUID (EAS-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de seguimiento (EAS).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eas_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Flora y Fauna
#' @inheritParams oefa_get_data
#' @export
oefa_get_eas_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAS - Componente ambiental Agua' del OEFA por su GUID (EAS-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluaciones ambientales de seguimiento (EAS).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eas_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Suelo
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Componente ambiental Suelo' del OEFA por su GUID (EAT-COMPO-AMBIE-SUELO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Sedimento
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Sedimento' del OEFA por su GUID (EAT-SEDIM).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{EXTRAC}{Etapa De Extraccion [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Ruido y Vibraciones
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Ruido y Vibraciones' del OEFA por su GUID (EAT-RUIDO-Y-VIBRA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_ruido_y_vibra <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-RUIDO-Y-VIBRA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente Biota (Hidrobiología)
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Componente Biota (Hidrobiología)' del OEFA por su GUID (EAT-COMPO-HIDRO).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Biota (Flora y Fauna)
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Biota (Flora y Fauna)' del OEFA por su GUID (EAT-FLORA-Y-FAUNA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Flora y Fauna - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_flora_y_fauna_eat_82093 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "FLORA-Y-FAUNA-EAT-82093", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Aire
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Componente ambiental Aire' del OEFA por su GUID (EAT-COMPO-AMBIE-AIRE).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Agua
#'
#' @description
#' Descarga los datos del conjunto de datos 'EAT - Componente ambiental Agua' del OEFA por su GUID (EAT-COMPO-AMBIE-AGUA).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{MONITOREO}{Etapa De Monitoreo [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{MATRIZ}{Tipo De Matriz Evaluada [Cadena De Texto]}
#'   \item{SUBMATRIZ}{Tipo De Submatriz A Evaluar [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{UBICACIÓN}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{MUESTRA}{Si La Muestra Es Simple O Compuesta [Cadena De Texto]}
#'   \item{ANALISIS}{Tipo De Analisis Realizado [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{VALOR}{Resultado De Evaluacion [Numérico]}
#'   \item{PARAMETR}{Parámetros Que Superan El Eca O Lmp [Cadena De Texto]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eat_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones TFA - PRueba
#' @inheritParams oefa_get_data
#' @export
oefa_get_resol_tfa_prueb <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-TFA-PRUEB", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Pedidos fiscalía 2018
#'
#' @description
#' Descarga los datos del conjunto de datos 'Pedidos fiscalía 2018' del OEFA por su GUID (PEDID-FISCA-2018).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Fiscalías Especializadas en Materia Ambiental.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{TIPO_DE_PEDIDO}{Tipo De Pedido Solicitado Por Las Fiscalias [Cadena De Texto]}
#'   \item{AMERITA_}{Indica Si El Pedido Solicitado Amerita Respuesta [Booleano]}
#'   \item{DOCUMENT}{Oficio Recibido De Fiscalia [Cadena De Texto]}
#'   \item{FECHA_OEFA}{Fecha Que El Documento Ingresa A Oefa [Fecha]}
#'   \item{REMITENT}{Fiscalia Que Remite El Oficio [Cadena De Texto]}
#'   \item{SECTOR}{Sector Al Que Pertenece El Delito [Cadena De Texto]}
#'   \item{PLAZO_FI}{Plazo Indicado Por Fiscalia [Fecha]}
#'   \item{TIPO_DOC}{Tipo De Documento Con El Que Se Absuelve El Requrimiento De Fiscalia [Cadena De Texto]}
#'   \item{NRO_INF}{Número De Informe U Oficio [Cadena De Texto]}
#'   \item{FECHA_EM}{Fecha En La Que Sale El Informe U Oficio [Fecha]}
#'   \item{OFICIO_SEFA}{Oficio Con El Que Se Envia El Informe [Cadena De Texto]}
#'   \item{FECHA_RE}{Fecha Con La Que Sale El Oficio De Remision [Fecha]}
#'   \item{ESTADO}{Estado En El Que Se Encuentra El Pedido Solictado [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_pedid_fisca_2018 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PEDID-FISCA-2018", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de las evaluaciones ambientales
#' @inheritParams oefa_get_data
#' @export
oefa_get_ident_de_las_evalu_ambie <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-LAS-EVALU-AMBIE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de acciones de fiscalización ambiental
#' @inheritParams oefa_get_data
#' @export
oefa_get_ident_de_accio_de_fisca <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-ACCIO-DE-FISCA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de acciones de supervisión ambiental
#' @inheritParams oefa_get_data
#' @export
oefa_get_ident_de_accio_de_super <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-ACCIO-DE-SUPER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Prueba IPASH
#' @inheritParams oefa_get_data
#' @export
oefa_get_prueb_ipash <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PRUEB-IPASH", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Prueba ISIM
#' @inheritParams oefa_get_data
#' @export
oefa_get_prueb_isim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PRUEB-ISIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Agua - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_compo_ambie_agua_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-AGUA-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Sedimento - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente hidroquímico - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_compo_hidro_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-HIDRO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente biológico - EAT
#'
#' @description
#' Descarga los datos del conjunto de datos 'Componente biológico - EAT' del OEFA por su GUID (COMPO-BIOLO-EAT).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_compo_biolo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-BIOLO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Biológico - EAT
#'
#' @description
#' Descarga los datos del conjunto de datos 'Componente ambiental Biológico - EAT' del OEFA por su GUID (COMPO-AMBIE-BIOLO-EAT).
#' Pertenece a la sección del Diccionario de Datos: Evaluación ambiental > Evaluación Ambiental Temprana (EAT).
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{NRO_INFO}{Número Del Informe Correspondiente [Cadena De Texto]}
#'   \item{EVALUACION}{Nombre De Evaluacion [Cadena De Texto]}
#'   \item{C_AMB}{Tipo De Componente Ambiental Evaluada [Cadena De Texto]}
#'   \item{PROCEDEN}{Biota Terrestre O Acuático [Cadena De Texto]}
#'   \item{PROCEDEN}{Comunidades Biologicas [Cadena De Texto]}
#'   \item{DETALLE_M}{Organismos [Cadena De Texto]}
#'   \item{PUNTO}{Nombre Del Punto De Muestreo [Cadena De Texto]}
#'   \item{FECHA}{Fecha En La Que Se Tomó La Muestra [Fecha]}
#'   \item{ESTE}{Coordenada Este [Numérico]}
#'   \item{NORTE}{Coordenada Norte [Numérico]}
#'   \item{ALTITUD}{Altitud Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ZONA}{Zona Utm [Cadena De Texto]}
#'   \item{DATUM}{Punto De Referencia Geográfica [Cadena De Texto]}
#'   \item{DESCRIPC}{Descripción Referencial De La Ubicación Del Punto De Muestreo [Cadena De Texto]}
#'   \item{ESPECIE}{Especie [Cadena De Texto]}
#'   \item{GENERO}{Género [Cadena De Texto]}
#'   \item{FAMILIA}{Familia [Cadena De Texto]}
#'   \item{ORDEN}{Categoría Taxonómica Entre La Clase Y La Familia [Cadena De Texto]}
#'   \item{CLASE}{Clase [Cadena De Texto]}
#'   \item{PHYLUM}{Phylum [Cadena De Texto]}
#'   \item{TAXONES}{Taxones [Numérico]}
#'   \item{ABUNDANC}{Representación Relativa De Una Especie En Un Ecosistema Particular [Numérico]}
#'   \item{MEDIDA}{Unidad Utilizada Para Medir Parametro [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_compo_ambie_biolo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-BIOLO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Suelo - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_compo_ambie_suelo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-SUELO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Evaluaciones ambientales de causalidad (EAC)
#' @inheritParams oefa_get_data
#' @export
oefa_get_evalu_ambie_causal_eac <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EVALU-AMBIE-CAUSAL-EAC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Evaluaciones ambientales tempranas (EAT)
#' @inheritParams oefa_get_data
#' @export
oefa_get_evalu_ambie_temp_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EVALU-AMBIE-TEMP-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Flora y Fauna - EAT
#' @inheritParams oefa_get_data
#' @export
oefa_get_flora_y_fauna_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "FLORA-Y-FAUNA-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Evaluaciones ambientales de seguimiento (EAS)
#' @inheritParams oefa_get_data
#' @export
oefa_get_evalu_ambie_de_segui <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EVALU-AMBIE-DE-SEGUI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Evaluaciones ambientales focalizadas (EAF)
#' @inheritParams oefa_get_data
#' @export
oefa_get_evalu_ambie_foca_eaf <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EVALU-AMBIE-FOCA-EAF", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de pasivos ambientales del sector Hidrocarburos (IPASH)
#' @inheritParams oefa_get_data
#' @export
oefa_get_ident_de_pasiv_ambie_del <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-PASIV-AMBIE-DEL", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Evaluación ambiental para la identificación de Sitios Impactados (ISIM)
#' @inheritParams oefa_get_data
#' @export
oefa_get_evalu_ambie_para_la_ident <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EVALU-AMBIE-PARA-LA-IDENT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Supervisiones concluidas - Informes elaborados
#' @inheritParams oefa_get_data
#' @export
oefa_get_infor_elabo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-ELABO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Medidas administrativas
#'
#' @description
#' Descarga los datos del conjunto de datos 'Medidas administrativas' del OEFA por su GUID (MEDID-ADMIN).
#' Pertenece a la sección del Diccionario de Datos: Supervisión ambiental > Medidas Administrativas.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{SECTOR}{Sector [Cadena De Texto]}
#'   \item{NRO_EXPE}{Número De Expediente [Cadena De Texto]}
#'   \item{TITULAR}{Razon Social Del Administrado [Cadena De Texto]}
#'   \item{UNIDAD}{Lugar Donde El Administrado Desarrolla Su Actividad Económica O Su Función De Fiscalización Ambiental, Sujeta A Supervisión De La Autoridad De Supervisión. Puede Comprender Uno O Más Componentes. [Cadena De Texto]}
#'   \item{DET_HECHOS}{Fecha De Deteccion De Los Hechos [Fecha]}
#'   \item{NRO_RESOL}{Número De Resolución Directoral Que Dicta La Medida [Cadena De Texto]}
#'   \item{FECHA_RESOL}{Fecha En La Que Se Emite La Resolución Directoral [Cadena De Texto]}
#'   \item{DESC_MEDIDAS}{Indica El Tipo De Medida Administrativa Dictada [Cadena De Texto]}
#'   \item{T_MEDIDA}{Abreviatura De Tipo De Medida Admnistrativa [Cadena De Texto]}
#'   \item{MP}{Disposiciones A Través De Las Cuales La Autoridad De Supervisión Directa Impone A Un Administrado Una Obligación De Hacer O No Hacer, Destinada A Evitar Un Inminente Peligro O Un Alto Riesgo De Producirse Un Daño Grave Al Ambiente, Los Recursos Naturales Y La Salud De Las Personas, Así Como A Mitigar Las Causas Que Generan La Degradación O El Daño Ambiental. [Cadena De Texto]}
#'   \item{MCP}{Disposición Dictada Por La Autoridad De Supervisión A Través De La Cual Se Ordena Al Administrado Realizar Determinadas Acciones Que Tengan Como Finalidad Garantizar La Eficacia De La Fiscalización Ambiental. [Cadena De Texto]}
#'   \item{ESTADO}{Estado De La Medida Administrativa [Cadena De Texto]}
#'   \item{INF_SUPERC}{Informe De Supervisión De Cumplimiento De La Medida Admnistrativa [Cadena De Texto]}
#'   \item{NRO_RESOLV}{Número De La Resolución De Variacion [Cadena De Texto]}
#'   \item{NRO_TEC}{Número De Informe Técnico [Cadena De Texto]}
#'   \item{NRO_CONSID}{Número De Resolución De Reconsideracion [Cadena De Texto]}
#'   \item{NRO_TFA}{Número De Resolución Del Tfa Del Recurso Impugnado [Cadena De Texto]}
#'   \item{REGION}{Indica Region Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{PROVINCIA}{Indica Provincia Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{DISTRITO}{Indica Distrito Donde Impuso La Medida. [Cadena De Texto]}
#'   \item{MANDATO}{Descripción Del Mandato [Cadena De Texto]}
#'   \item{REVOCACION}{Indica Si Revocó La Medida Administrativa [Booleano]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_medid_admin <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "MEDID-ADMIN", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones emitidas
#' @inheritParams oefa_get_data
#' @export
oefa_get_resol_emiti <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-EMITI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Aprobación de la selección de personal
#'
#' @description
#' Descarga los datos del conjunto de datos 'Aprobación de la selección de personal' del OEFA por su GUID (APROB-DEL-SELE).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Personal.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{REGISTRO}{Número Correlativo Que Hace Referncia A Una Convocatoria Una Convocatoria Cas [Entero]}
#'   \item{AÑO_SELEC}{Año Que Inició Sus Labores En La Institución [Cadena De Texto]}
#'   \item{MES}{Mes Que Inició Sus Labores En La Institución [Cadena De Texto]}
#'   \item{ESTADO}{Estado Del Proceso De Selección [Cadena De Texto]}
#'   \item{AREA_SELEC}{A Que Área Pertenece Cada Proceso [Cadena De Texto]}
#'   \item{CANT_SELEC}{Total De Plazas [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_aprob_del_sele <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "APROB-DEL-SELE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Fiscalías Especializadas en Materia Ambiental (FEMA)
#' @inheritParams oefa_get_data
#' @export
oefa_get_coord_con_las_fisca_espec <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COORD-CON-LAS-FISCA-ESPEC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Actividades AFA
#'
#' @description
#' Descarga los datos del conjunto de datos 'Actividades AFA' del OEFA por su GUID (ACTIV-AFA).
#' Pertenece a la sección del Diccionario de Datos: Politicas y Estrategias > Fortalecimiento de capacidades en fiscalización ambiental.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{INICIO}{Se Hace Referencia A La Fecha De Inicio De La Actividad Académica. [Fecha]}
#'   \item{FECHA_FIN}{Se Hace Referencia A La Fecha De Termino De Actividad Académica. [Fecha]}
#'   \item{ACTIVIDAD}{Se Hace Referencia A: Programa De Formación, Cursos Y Jornadas Académicas. [Cadena De Texto]}
#'   \item{SUB_TIPO}{Hace Referencia A Subgrupos Programa De Formación(Diplomado, Programa Actualización, Pasantías, Curso De Extensión Universitaria), Cursos(Curso Básico, Curso Taller O Curso De Especialización), Jornadas Académicas(Taller, Charlas, Conferencias, Cátedras,Asistencia Técnica) [Cadena De Texto]}
#'   \item{EVENTO}{Corresponde Al Nombre De La Actividad Académica. [Cadena De Texto]}
#'   \item{DESTINAT}{Se Hace Referencia A: Colaboradores Del Oefa, Funcionarios Públicos, Administrados Y Ciudadanos [Cadena De Texto]}
#'   \item{DEPARTAM}{Corresponde Al Departamento Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{PROVINCIA}{Corresponde A La Provincia Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{CIUDAD}{Corresponde A La Ciudad Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{AMBIENTE}{Lugar Donde Se Realiza La Actividad Académica. [Cadena De Texto]}
#'   \item{HORARIO}{Se Hace Referencia Al Horario De La Actividad Académica. [Cadena De Texto]}
#'   \item{HORAS}{Se Hace Referencia A La Cantidad De Horas Cronológicas. [Numérico]}
#'   \item{CERTIFICACION}{Hace Referencia A La Certificación A Emitir(Certificado, Constancia O Ninguno) [Cadena De Texto]}
#'   \item{MODALIDA}{Hace Referencia A La Modadlidad Presencial, Semipresencial O Virtual. [Cadena De Texto]}
#'   \item{NRO_SESI}{Cantidad De Sesiones Que Tiene Una Actividad Académica. [Numérico]}
#'   \item{META}{Hace Referencia A La Cantidad De Participantes Que Se Estima Capacitar. [Numérico]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_activ_afa <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ACTIV-AFA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Opiniones Técnicas a proyectos normativos
#' @inheritParams oefa_get_data
#' @export
oefa_get_opin_tecni <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "OPIN-TECNI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Atención de denuncias en el SINADA
#' @inheritParams oefa_get_data
#' @export
oefa_get_aten_denun_en_el_sna_ambie <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ATEN-DENUN-EN-EL-SNA-AMBIE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Acciones estratégicas en TI
#' @inheritParams oefa_get_data
#' @export
oefa_get_accio_estra_en_ti <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ACCIO-ESTRA-EN-TI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Información presupuestal
#'
#' @description
#' Descarga los datos del conjunto de datos 'Información presupuestal' del OEFA por su GUID (EJE-DEL-PRESU).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Información presupuestal.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{FINANCIAMIENT}{Nomenclatura Y Definicion De Fuentes De Financiamiento [Cadena De Texto]}
#'   \item{GASTO}{Categoria De Gasto Asignada [Cadena De Texto]}
#'   \item{GENERICA}{Categoria De Gasto Que Corresponde A Los Creditos Presupuestarios Agrupados En Gastos Corrientes, Gastos De Capital Y El Servicio De Deuda [Cadena De Texto]}
#'   \item{SEC_FUNC}{Identificacion Correlativa De La Meta Asignada A Nivel De Unidad Ejecutora [Entero]}
#'   \item{PRESUP}{Categoria Presupuestal Que Comprende Los Elementos Relacionados A La Metodologia Del Presupuesto [Cadena De Texto]}
#'   \item{PRESUP_AGR}{Categoria Presupuestaria Agregrada [Cadena De Texto]}
#'   \item{AREA_IP}{Organo/Direccion Que Cuenta Con El Presupuesto [Cadena De Texto]}
#'   \item{CLASIFIC}{Codificacion Que Permite El Registro Ordenado Y Uniforme De Las Operaciones Del Sector Publico [Cadena De Texto]}
#'   \item{DETALLE_C}{Descripción Del Clasificador De Gasto [Cadena De Texto]}
#'   \item{PIA}{Presupuesto Inicial De La Entidad Aprobado Por El Titular De La Entidad Con Cargo A Los Creditos Presupuestarios Establecidos En La Ley Anual De Presupuesto Del Sector Publico [Entero]}
#'   \item{PIM}{Presupuesto Actualizado De La Entidad Como Consecuencia De Las Modificaciones Presupuestarias Efectuadas Durante El Año Fiscal A Partir Del Pia [Entero]}
#'   \item{ENERO}{Ejecución Del Mes De Enero [Entero]}
#'   \item{FEBRERO}{Ejecución Del Mes De Febrero [Entero]}
#'   \item{MARZO}{Ejecución Del Mes De Marzo [Entero]}
#'   \item{ABRIL}{Ejecución Del Mes De Abril [Entero]}
#'   \item{MAYO}{Ejecución Del Mes De Mayo [Entero]}
#'   \item{JUNIO}{Ejecución Del Mes De Junio [Entero]}
#'   \item{JULIO}{Ejecución Del Mes De Julio [Entero]}
#'   \item{AGOSTO}{Ejecución Del Mes De Agosto [Entero]}
#'   \item{SETIEMBR}{Ejecución Del Mes De Setiembre [Entero]}
#'   \item{OCTUBRE}{Ejecución Del Mes De Octubre [Entero]}
#'   \item{NOVIEMBR}{Ejecución Del Mes De Noviembre [Entero]}
#'   \item{DICIEMBR}{Ejecución Del Mes De Diciembre [Entero]}
#'   \item{EJEC_1T}{Presupuesto Ejecutado Al Primer Trimestre [Entero]}
#'   \item{EJEC_2T}{Presupuesto Ejecutado En El Segundo Trimestre [Entero]}
#'   \item{EJEC_3T}{Presupuesto Ejecutado En El Tercer Trimestre [Entero]}
#'   \item{EJEC_4T}{Presupuesto Ejecutado En El Cuarto Trimestre [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_eje_del_presu <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EJE-DEL-PRESU", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Interacción en redes sociales
#'
#' @description
#' Descarga los datos del conjunto de datos 'Interacción en redes sociales' del OEFA por su GUID (INTER-EN-REDES-SOCIA).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Interacción en redes sociales.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{MES}{Detalla El Mes En El Que Incorporan Nuevos Seguidores A Las Redes Sociales [Cadena De Texto]}
#'   \item{RED_SOCI}{Indica En Qué Red Social Se Suman Nuevos Seguidores [Cadena De Texto]}
#'   \item{SEGUIDOR}{Indica La Cantidad De Nuevos Seguidores [Entero]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_inter_en_redes_socia <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INTER-EN-REDES-SOCIA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Información del personal
#' @inheritParams oefa_get_data
#' @export
oefa_get_infor_del_perso <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DEL-PERSO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Recaudación
#'
#' @description
#' Descarga los datos del conjunto de datos 'Recaudación' del OEFA por su GUID (RECAU-84768).
#' Pertenece a la sección del Diccionario de Datos: Información Institucional > Recaudación.
#'
#' @details
#' Estructura principal de campos según el Diccionario de Datos Oficial del OEFA:
#' \describe{
#'   \item{AÑO_REG}{Año Correspondiente Al Aporte [Cadena De Texto]}
#'   \item{MES}{Mes Correspondiente Al Aporte [Cadena De Texto]}
#'   \item{R.U.C.}{R.U.C. Correspondiente Al Aportante [Numérico]}
#'   \item{RAZON_SO}{Razon Social Correspondiente Al Aportante [Cadena De Texto]}
#'   \item{SECTOR}{Sector Económico Correspondiente Al Aportante [Cadena De Texto]}
#' }
#'
#' @inheritParams oefa_get_data
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_recau_84768 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RECAU-84768", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}
