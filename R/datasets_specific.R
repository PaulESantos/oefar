# Funciones especificas dedicadas para los 78 conjuntos de datos del OEFA

#' Descargar dataset: Denuncias SINADA
#' @param limit Entero opcional. Cantidad maxima de filas.
#' @param offset Entero opcional. Desplazamiento inicial.
#' @param ... Parametros adicionales.
#' @param format Formato de salida ("tibble", "csv", "json").
#' @param clean_names Logico. Si es TRUE (por defecto), limpia nombres de columnas a minusculas con guiones bajos.
#' @param timeout Entero. Tiempo maximo de espera en segundos para la peticion (por defecto 60).
#' @param api_key API Key de OEFA.
#' @return Un \code{\link[tibble]{tibble}} con los registros del dataset.
#' @export
oefa_get_denun_sinad <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "DENUN-SINAD", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos OEFA
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_norma_oefa <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-OEFA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos Externos
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_norma_exter <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-EXTER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de supervisión 2018
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_infor_de_la_coord_agric <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-COORD-AGRIC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Pedidos fiscalía 2019-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_pedid_fisca_2019_61940 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PEDID-FISCA-2019-61940", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos TI
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_ti_69998 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-TI-69998", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Seguidores en redes sociales
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_segui_en_redes_socia <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEGUI-EN-REDES-SOCIA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procesos de selección de personal
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proce_de_selec_de_71611 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-SELEC-DE-71611", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Aporte por regulación
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_aport_por_regul_80624 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "APORT-POR-REGUL-80624", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procedimientos de ejecución coactiva: Multas ambientales
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proce_de_ejecu_coact_14377 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-EJECU-COACT-14377", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Procedimientos de ejecución coactiva: Aporte por regulación
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proce_de_ejecu_coact_70031 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROCE-DE-EJECU-COACT-70031", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Información presupuestal
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_infor_presu_89055 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-PRESU-89055", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos de inversión
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_de_inver <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-DE-INVER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Publicaciones en redes sociales
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_publi_en_redes_socia_45921 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PUBLI-EN-REDES-SOCIA-45921", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Seguidores en redes sociales 2
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_segui_en_redes_socia_87207 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEGUI-EN-REDES-SOCIA-87207", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Aporte por regulación 2
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_aport_por_regul_66627 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "APORT-POR-REGUL-66627", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Actividades Afa 2018-2024
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_activ_afa_36113 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ACTIV-AFA-36113", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos Externos 2018-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_norma_exter_65772 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-EXTER-65772", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Proyectos Normativos OEFA 2018-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_proye_norma_oefa_64027 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PROYE-NORMA-OEFA-64027", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Denuncias SINADA 2019-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_denun_sinad_61293 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "DENUN-SINAD-61293", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones directorales 2018-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_resol_direc_50309 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-DIREC-50309", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones subdirectorales 2018-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_resol_subdi <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-SUBDI", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Registros actos administrativos 2021-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_regis_actos_admin_96376 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "REGIS-ACTOS-ADMIN-96376", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Expedientes resueltos 2021-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_exped_resue_15640 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EXPED-RESUE-15640", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resolución con multa firmes 2019-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_resol_con_multa_firme <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-CON-MULTA-FIRME", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Medidas administrativas de las direcciones de supervisión
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_medid_admin_de_las_direc <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "MEDID-ADMIN-DE-LAS-DIREC", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de la Dirección de Supervisión 2019-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_infor_de_la_direc_28304 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-DIREC-28304", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Informes de la Dirección de Supervisión 2018
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_infor_de_la_direc_de <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "INFOR-DE-LA-DIREC-DE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Sedimento 2020-2025
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_sedim_91086 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-SEDIM-91086", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Ruido
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_ruido <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-RUIDO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente Hidrobiología
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Biota
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_biota <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-BIOTA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Aire
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAC - Componente ambiental Agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eac_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAC-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Componente Ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ipash_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_compo_ambie_suelo_18111 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-SUELO-18111", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente Hidrobiología
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Aire
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente Hidrobiología 2
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_compo_hidro_66459 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-HIDRO-66459", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Biota
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_compo_biolo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-BIOLO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Componente Ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_isim_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_isim_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Hidrobiología
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_isim_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: ISIM - Componente Ambiental Agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_isim_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "ISIM-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ipash_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: IPASH - Componente Ambiental Agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ipash_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IPASH-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente Hidrobiología
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental Aire
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Componente ambiental agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAF - Flora y Fauna
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eaf_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAF-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Flora y Fauna
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAS - Componente ambiental Agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eas_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAS-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Suelo
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_compo_ambie_suelo <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-SUELO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Sedimento
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Ruido y Vibraciones
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_ruido_y_vibra <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-RUIDO-Y-VIBRA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente Biota (Hidrobiología)
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_compo_hidro <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-HIDRO", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Biota (Flora y Fauna)
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_flora_y_fauna <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-FLORA-Y-FAUNA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Flora y Fauna - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_flora_y_fauna_eat_82093 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "FLORA-Y-FAUNA-EAT-82093", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Aire
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_compo_ambie_aire <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-AIRE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: EAT - Componente ambiental Agua
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_eat_compo_ambie_agua <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "EAT-COMPO-AMBIE-AGUA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Resoluciones TFA - PRueba
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_resol_tfa_prueb <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "RESOL-TFA-PRUEB", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Pedidos fiscalía 2018
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_pedid_fisca_2018 <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PEDID-FISCA-2018", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de las evaluaciones ambientales
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ident_de_las_evalu_ambie <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-LAS-EVALU-AMBIE", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de acciones de fiscalización ambiental
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ident_de_accio_de_fisca <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-ACCIO-DE-FISCA", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Identificación de acciones de supervisión ambiental
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_ident_de_accio_de_super <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "IDENT-DE-ACCIO-DE-SUPER", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Prueba IPASH
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_prueb_ipash <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PRUEB-IPASH", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Prueba ISIM
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_prueb_isim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "PRUEB-ISIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Agua - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_compo_ambie_agua_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-AGUA-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Sedimento - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_sedim <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "SEDIM", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente hidroquímico - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_compo_hidro_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-HIDRO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente biológico - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_compo_biolo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-BIOLO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Biológico - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_compo_ambie_biolo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-BIOLO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}

#' Descargar dataset: Componente ambiental Suelo - EAT
#' @inheritParams oefa_get_denun_sinad
#' @export
oefa_get_compo_ambie_suelo_eat <- function(limit = NULL, offset = NULL, ..., format = c("tibble", "csv", "json"), clean_names = TRUE, timeout = 60, api_key = oefa_get_api_key()) {
  oefa_get_data(guid = "COMPO-AMBIE-SUELO-EAT", limit = limit, offset = offset, ..., format = format, clean_names = clean_names, timeout = timeout, api_key = api_key)
}
