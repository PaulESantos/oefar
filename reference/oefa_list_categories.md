# List thematic data categories from OEFA

List thematic data categories from OEFA

## Usage

``` r
oefa_list_categories(api_key = oefa_get_api_key())

oefa_list_topics(api_key = oefa_get_api_key())
```

## Arguments

- api_key:

  Character. OEFA API Key.

## Value

A [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) with
available categories and total count of datastreams per category.

## Examples

``` r
if (FALSE) { # \dontrun{
cats <- oefa_list_categories()
} # }
```
