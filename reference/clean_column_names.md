# Limpiar nombres de columnas o vectores de caracteres (inspirado en janitor::make_clean_names)

Limpia un vector de caracteres o un data.frame garantizando nombres
unicos, transliteración ASCII de acentos (ej. español/latín),
eliminación de comillas, conversión de caracteres como % y \# a texto, y
formateo según el formato de caso deseado.

## Usage

``` r
clean_column_names(
  string,
  case = "snake",
  replace = c(`'` = "", `"` = "", `%` = "_percent_", `#` = "_number_"),
  ascii = TRUE,
  use_make_names = TRUE,
  allow_dupes = FALSE,
  sep_in = "\\.",
  transliterations = "Latin-ASCII",
  parsing_option = 1,
  numerals = "asis",
  ...
)
```

## Arguments

- string:

  Vector de caracteres con nombres o un data.frame.

- case:

  El caso de destino deseado (por defecto es \`"snake"\`).

- replace:

  Vector de caracteres nombrado donde la clave se reemplaza por el
  valor. Por defecto
  `c("'" = "", "\"" = "", "%" = "_percent_", "#" = "_number_")`.

- ascii:

  Convertir los nombres a ASCII (`TRUE`, por defecto) o no (`FALSE`).

- use_make_names:

  ¿Aplicar [`make.names()`](https://rdrr.io/r/base/make.names.html) para
  asegurar nombres validos de R? (`TRUE`, por defecto).

- allow_dupes:

  Permitir duplicados en los nombres retornados (`FALSE`, por defecto).

- sep_in:

  Separador de entrada para cambio de caso (por defecto `"\\."`).

- transliterations:

  Especificacion de transliteraciones (por defecto `"Latin-ASCII"`).

- parsing_option:

  Opcion de parseo (por defecto 1).

- numerals:

  Tratamiento de numerales (por defecto `"asis"`).

- ...:

  Argumentos adicionales pasados a
  [`snakecase::to_any_case()`](https://rdrr.io/pkg/snakecase/man/to_any_case.html)
  si esta instalado.

## Value

Regresa un vector de caracteres limpio o un data.frame con nombres de
columna limpios.
