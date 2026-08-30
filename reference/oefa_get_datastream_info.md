# Get detailed metadata for a specific datastream

Get detailed metadata for a specific datastream

## Usage

``` r
oefa_get_datastream_info(guid, api_key = oefa_get_api_key())

oefa_get_dataset_info(guid, api_key = oefa_get_api_key())
```

## Arguments

- guid:

  Character. The GUID (unique identifier) of the datastream (e.g.,
  "DENUN-SINAD").

- api_key:

  Character. OEFA API Key.

## Value

A list or tibble containing complete metadata for the datastream.

## Examples

``` r
if (FALSE) { # \dontrun{
info <- oefa_get_datastream_info("DENUN-SINAD")
} # }
```
