test_that("oefa_list_datastreams retorna catalogo de datastreams en tibble", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa para probar peticiones reales.")

  ds <- oefa_list_datastreams(limit = 10)
  expect_s3_class(ds, "tbl_df")
  expect_true(nrow(ds) > 0)
  expect_true("guid" %in% names(ds))
  expect_true("title" %in% names(ds))
})

test_that("oefa_search_datastreams filtra adecuadamente por termino clave", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa.")

  res <- oefa_search_datastreams("denuncias")
  expect_s3_class(res, "tbl_df")
})

test_that("oefa_list_categories retorna estadisticas por categoria", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa.")

  cats <- oefa_list_categories()
  expect_s3_class(cats, "tbl_df")
  expect_true("category_id" %in% names(cats))
  expect_true("total_datastreams" %in% names(cats))
})

test_that("oefa_get_datastream_info obtiene metadatos de un datastream especifico", {
  skip_if_not(oefa_has_api_key(), "Se requiere OEFA_API_KEY activa.")

  info <- oefa_get_datastream_info("DENUN-SINAD")
  expect_true(is.list(info) || is.data.frame(info))
})
