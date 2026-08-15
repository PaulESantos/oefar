test_that("oefa_get_data descarga registros en tibble", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa para probar descargas.")

  datos <- oefa_get_data("DENUN-SINAD", limit = 10)
  expect_s3_class(datos, "tbl_df")
  expect_true(nrow(datos) > 0)
  expect_true(ncol(datos) >= 5)
  expect_true("codigo_sinada" %in% names(datos) || "medio_de_recepcion" %in% names(datos))
})

test_that("oefa_get_denun_sinad soporta parametro timeout directamente", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa.")

  datos <- oefa_get_denun_sinad(limit = 10, timeout = 90)
  expect_s3_class(datos, "tbl_df")
  expect_true(nrow(datos) >= 1)
  expect_true(all(names(datos) == tolower(names(datos))))
})

test_that("oefa_read_datastream alias funciona correctamente", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa.")

  datos <- oefa_read_datastream("DENUN-SINAD", limit = 10)
  expect_s3_class(datos, "tbl_df")
  expect_true(nrow(datos) >= 1)
})

test_that("oefa_get_data valida parametros de entrada", {
  expect_error(oefa_get_data(""))
})
