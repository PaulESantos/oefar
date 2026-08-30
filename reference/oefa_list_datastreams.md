# List the OEFA dataset (datastream) catalog

Retrieves the catalog of datasets (datastreams) available on the OEFA
(Environmental Evaluation and Enforcement Agency of Peru) Open Data
portal.

## Usage

``` r
oefa_list_datastreams(
  category = NULL,
  query = NULL,
  limit = NULL,
  offset = NULL,
  api_key = oefa_get_api_key()
)

oefa_list_datasets(
  category = NULL,
  query = NULL,
  limit = NULL,
  offset = NULL,
  api_key = oefa_get_api_key()
)
```

## Arguments

- category:

  Optional character. Filter datasets by category name or ID.

- query:

  Optional character. Filter by search keyword in title or description.

- limit:

  Optional integer. Maximum number of records to return.

- offset:

  Optional integer. Initial offset for pagination.

- api_key:

  Character. OEFA API Key. Defaults to
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

A structured
[`tibble`](https://tibble.tidyverse.org/reference/tibble.html) with
datastream metadata:

- `guid`: Unique dataset identifier.

- `title`: Title of the dataset.

- `description`: Detailed description of the dataset.

- `category_name`: Name of the thematic category.

- `category_id`: Identifier of the category.

- `created_at`: Creation date (Unix timestamp or formatted).

- `modified_at`: Last modification date.

- `link`: Direct link on the web portal.

## Examples

``` r
if (FALSE) { # \dontrun{
catalog <- oefa_list_datastreams()
head(catalog)

complaints_ds <- oefa_list_datastreams(query = "denuncias")
} # }
```
