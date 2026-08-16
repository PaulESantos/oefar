# Buscar conjuntos de datos en el portal de OEFA

Buscar conjuntos de datos en el portal de OEFA

## Usage

``` r
oefa_search_datastreams(query, api_key = oefa_get_api_key())
```

## Arguments

- query:

  Carácter. Termino de búsqueda (ej. "denuncias", "fiscalizacion",
  "supervision").

- api_key:

  Carácter. API Key de OEFA.

## Value

Un [`tibble`](https://tibble.tidyverse.org/reference/tibble.html) con
los conjuntos de datos coincidentes.

## Examples

``` r
if (FALSE) { # \dontrun{
res <- oefa_search_datastreams("monitoreo")
} # }
```
