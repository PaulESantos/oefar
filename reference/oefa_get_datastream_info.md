# Obtener información detallada de un datastream específico

Obtener información detallada de un datastream específico

## Usage

``` r
oefa_get_datastream_info(guid, api_key = oefa_get_api_key())

oefa_get_dataset_info(guid, api_key = oefa_get_api_key())
```

## Arguments

- guid:

  Carácter. El GUID (identificador único) del datastream (ej.
  "DENUN-SINAD").

- api_key:

  Carácter. API Key de OEFA.

## Value

Una lista o tibble con la información completa de metadatos del
datastream.

## Examples

``` r
if (FALSE) { # \dontrun{
info <- oefa_get_datastream_info("DENUN-SINAD")
} # }
```
