# Clean column names or character vectors (inspired by janitor::make_clean_names)

Cleans a character vector or data.frame ensuring unique names, ASCII
transliteration of accents (e.g., Spanish/Latin), removal of quotes,
conversion of characters such as % and \# to text, and formatting
according to the desired case format.

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

  Character vector with names or a data.frame.

- case:

  Desired target case format (default is \`"snake"\`).

- replace:

  Named character vector where key is replaced by value. Default
  `c("'" = "", "\"" = "", "%" = "_percent_", "#" = "_number_")`.

- ascii:

  Convert names to ASCII (`TRUE`, default) or not (`FALSE`).

- use_make_names:

  Whether to apply
  [`make.names()`](https://rdrr.io/r/base/make.names.html) to ensure
  valid R names (`TRUE`, default).

- allow_dupes:

  Allow duplicate names in returned output (`FALSE`, default).

- sep_in:

  Input separator for case conversion (default `"\\."`).

- transliterations:

  Specification of transliterations (default `"Latin-ASCII"`).

- parsing_option:

  Parsing option (default 1).

- numerals:

  Handling of numerals (default `"asis"`).

- ...:

  Additional arguments passed to
  [`snakecase::to_any_case()`](https://rdrr.io/pkg/snakecase/man/to_any_case.html)
  if installed.

## Value

Returns a clean character vector or a data.frame with cleaned column
names.

## Examples

``` r
clean_column_names(c("CÓDIGO ÚNICO", "N° Expediente", "Tasa %"))
#> [1] "codigo_unico" "n_expediente" "tasa_percent"

df <- data.frame(`Área Total` = 1:5, `N° Casos` = 6:10, check.names = FALSE)
clean_column_names(df)
#>   area_total n_casos
#> 1          1       6
#> 2          2       7
#> 3          3       8
#> 4          4       9
#> 5          5      10
```
