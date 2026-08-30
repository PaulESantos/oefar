# Download and query data from an OEFA dataset (datastream)

Downloads data from a dataset (datastream) on the OEFA (Environmental
Evaluation and Enforcement Agency of Peru) Open Data portal using its
GUID and returns it as a
[`tibble`](https://tibble.tidyverse.org/reference/tibble.html) object
with cleaned column names. Allows adjusting the download timeout
according to data volume.

## Usage

``` r
oefa_get_data(
  guid,
  limit = NULL,
  offset = NULL,
  pArgument0 = NULL,
  ...,
  format = c("tibble", "csv", "json"),
  clean_names = TRUE,
  timeout = 60,
  api_key = oefa_get_api_key()
)

oefa_read_datastream(
  guid,
  limit = NULL,
  offset = NULL,
  pArgument0 = NULL,
  ...,
  format = c("tibble", "csv", "json"),
  clean_names = TRUE,
  timeout = 60,
  api_key = oefa_get_api_key()
)
```

## Arguments

- guid:

  Character. Unique global identifier of the datastream (e.g.,
  "DENUN-SINAD").

- limit:

  Optional integer. Maximum number of rows to download.

- offset:

  Optional integer. Initial record offset for pagination.

- pArgument0:

  Optional character. First filter parameter if the datastream is
  parameterized by the API.

- ...:

  Additional query parameters (e.g., pArgument1, pArgument2).

- format:

  Character. Desired download format: `"tibble"` (default), `"csv"`, or
  `"json"`.

- clean_names:

  Logical. If `TRUE` (default), converts column names to lowercase
  snake_case.

- timeout:

  Integer. Maximum wait time in seconds for HTTP connection (default 60
  seconds).

- api_key:

  Character. OEFA API Key. Defaults to
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

A [`tibble`](https://tibble.tidyverse.org/reference/tibble.html)
containing dataset records.

## Examples

``` r
if (FALSE) { # \dontrun{
complaints <- oefa_get_data(guid = "DENUN-SINAD", timeout = 120)
print(complaints)
} # }
```
