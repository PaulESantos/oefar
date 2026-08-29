test_that("clean_column_names funciona correctamente en vectores de caracteres", {
  x <- c("name with space", "TwoWords", "total $ (2009)")
  res <- clean_column_names(x)
  expect_equal(res, c("name_with_space", "two_words", "total_2009"))
})

test_that("clean_column_names maneja reemplazos por defecto de comillas, % y #", {
  x <- c("user's_id", "porcentaje_%", "nro_#")
  res <- clean_column_names(x)
  expect_equal(res, c("users_id", "porcentaje_percent", "nro_number"))
})

test_that("clean_column_names limpia caracteres con acentos en español", {
  x <- c("código_sinada", "dirección_evaluación", "año_2023", "N° DE REGISTRO")
  res <- clean_column_names(x)
  expect_true("codigo_sinada" %in% res)
  expect_true("direccion_evaluacion" %in% res)
  expect_true("ano_2023" %in% res)
})

test_that("clean_column_names resuelve duplicados agregando sufijos numericos", {
  x <- c("variable", "variable", "variable")
  res <- clean_column_names(x)
  expect_equal(res, c("variable", "variable_2", "variable_3"))
})

test_that("clean_column_names soporta diferentes casos (camelCase, etc.)", {
  x <- c("first_name", "last_name")
  expect_equal(clean_column_names(x, case = "small_camel"), c("firstName", "lastName"))
  expect_equal(clean_column_names(x, case = "upper_camel"), c("FirstName", "LastName"))
})

test_that("clean_column_names acepta data.frames directamente", {
  df <- data.frame(`Nombre Completo` = 1, `Código %` = 2, check.names = FALSE)
  df_clean <- clean_column_names(df)
  expect_s3_class(df_clean, "data.frame")
  expect_equal(colnames(df_clean), c("nombre_completo", "codigo_percent"))
})

test_that("clean_column_names advierte sobre simbolo micro o mu", {
  x <- c("concentracion_\u00b5g_l")
  expect_warning(clean_column_names(x), "mu o micro")
})
