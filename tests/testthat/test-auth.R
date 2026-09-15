test_that("oefa_get_api_key y oefa_has_api_key funcionan cuando la API key esta configurada", {
  withr::with_envvar(c(OEFA_API_KEY = "test_key_12345"), {
    withr::with_options(list(oefa.api_key = NULL), {
      expect_equal(oefa_get_api_key(), "test_key_12345")
      expect_true(oefa_has_api_key())
      expect_true(has_oefa_api_key())
      expect_equal(oefa_api_key(), "test_key_12345")
    })
  })
})

test_that("oefa_get_api_key falla informativamente y has_api_key es FALSE cuando no hay API key", {
  withr::with_envvar(c(OEFA_API_KEY = ""), {
    withr::with_options(list(oefa.api_key = ""), {
      expect_false(oefa_has_api_key())
      expect_false(has_oefa_api_key())
      expect_error(oefa_get_api_key(), "No se ha encontrado la API Key")
    })
  })
})

test_that("oefa_set_api_key asigna correctamente la API key en la sesion", {
  withr::with_envvar(c(OEFA_API_KEY = ""), {
    withr::with_options(list(oefa.api_key = ""), {
      expect_false(oefa_has_api_key())
      set_oefa_api_key("nueva_key_abc")
      expect_true(oefa_has_api_key())
      expect_equal(oefa_get_api_key(), "nueva_key_abc")
    })
  })
})

test_that("oefa_set_api_key valida entradas invalidas", {
  expect_error(oefa_set_api_key(""))
  expect_error(oefa_set_api_key(123))
})
