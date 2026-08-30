# Configure and query the OEFA API Key

Get, set, or check the presence of the API Key required to interact with
the OEFA (Environmental Evaluation and Enforcement Agency of Peru) Open
Data portal. The API Key can be created at the developer portal:
<https://datosabiertos.oefa.gob.pe/developers/>.

## Usage

``` r
oefa_set_api_key(api_key, install = FALSE)

oefa_get_api_key()

oefa_has_api_key()

set_oefa_api_key(api_key, install = FALSE)

has_oefa_api_key()

oefa_api_key()
```

## Arguments

- api_key:

  Character. Personal API Key obtained from
  <https://datosabiertos.oefa.gob.pe/developers/>.

- install:

  Logical. If `TRUE`, saves the API Key permanently in the user's
  `.Renviron` file. Default is `FALSE`.

## Value

\- `oefa_get_api_key()`: Returns the active API Key as a character
string. If not set, raises an informative error. - `oefa_set_api_key()`:
Invisibly returns the configured API Key. - `oefa_has_api_key()`:
Returns `TRUE` if an API Key is configured, otherwise `FALSE`.

## Examples

``` r
if (FALSE) { # \dontrun{
oefa_set_api_key("your_api_key_here")
oefa_has_api_key()
key <- oefa_get_api_key()
} # }
```
