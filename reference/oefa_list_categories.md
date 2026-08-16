# Listar las categorías temáticas de datos del OEFA

Listar las categorías temáticas de datos del OEFA

## Usage

``` r
oefa_list_categories(api_key = oefa_get_api_key())

oefa_list_topics(api_key = oefa_get_api_key())
```

## Arguments

- api_key:

  Carácter. API Key de OEFA.

## Value

Un [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) con
las categorías disponibles y el conteo de datastreams por categoría.

## Examples

``` r
if (FALSE) { # \dontrun{
cats <- oefa_list_categories()
} # }
```
