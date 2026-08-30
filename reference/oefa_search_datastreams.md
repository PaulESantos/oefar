# Search datasets on the OEFA portal

Search datasets on the OEFA portal

## Usage

``` r
oefa_search_datastreams(query, api_key = oefa_get_api_key())
```

## Arguments

- query:

  Character. Search query term (e.g., "denuncias", "fiscalizacion",
  "supervision").

- api_key:

  Character. OEFA API Key.

## Value

A [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) with
matching datasets.

## Examples

``` r
if (FALSE) { # \dontrun{
res <- oefa_search_datastreams("monitoreo")
} # }
```
