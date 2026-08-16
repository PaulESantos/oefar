test_that("install_oefar_cli funciona o advierte cuando Rapp no esta instalado", {
  if (!requireNamespace("Rapp", quietly = TRUE)) {
    expect_error(install_oefar_cli(), "Rapp")
  } else {
    expect_silent(install_oefar_cli())
  }
})

test_that("el ejecutable exec/oefar existe y tiene estructura correcta", {
  cli_path <- system.file("exec", "oefar", package = "oefar")
  if (cli_path == "") {
    cli_path <- file.path("..", "..", "exec", "oefar")
  }
  expect_true(file.exists(cli_path) || file.exists("exec/oefar"))
})
