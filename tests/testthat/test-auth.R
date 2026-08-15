test_that("oefa_get_api_key recupera la API key de entorno", {
  key <- oefa_get_api_key()
  expect_type(key, "character")
  expect_true(nchar(key) > 0)
})

test_that("oefa_has_api_key retorna TRUE cuando hay API key", {
  expect_true(oefa_has_api_key())
  expect_true(has_oefa_api_key())
})

test_that("oefa_set_api_key asigna correctamente la API key en la sesion", {
  old_key <- oefa_get_api_key()
  on.exit(Sys.setenv(OEFA_API_KEY = old_key))

  oefa_set_api_key("test_key_12345")
  expect_equal(oefa_get_api_key(), "test_key_12345")
})

test_that("oefa_set_api_key valida entradas invalidas", {
  expect_error(oefa_set_api_key(""))
  expect_error(oefa_set_api_key(123))
})
