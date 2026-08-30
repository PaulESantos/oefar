# oefar

**`oefar`** is an R package designed to facilitate access, exploration,
and direct downloading of open data from the **Agency for Environmental
Assessment and Enforcement (OEFA)** of Peru via its v2 Open Data API
([datosabiertos.oefa.gob.pe](https://datosabiertos.oefa.gob.pe/)).

The package provides **98 dedicated functions** for each dataset in the
official catalog, automatic column name cleaning into snake_case
according to tidyverse conventions, configurable timeout handling, and
native `tibble` support.

------------------------------------------------------------------------

## Installation

You can install the released version of `oefar` from CRAN with:

``` r

install.packages("oefar")
```

Or install the development version from GitHub using `remotes` or
`devtools`:

``` r

# install.packages("remotes")
remotes::install_github("PaulESantos/oefar")
```

------------------------------------------------------------------------

## API Key Configuration

To use the OEFA Open Data API, a **personal API Key** is required. You
can obtain one directly from the OEFA developer portal:
<https://datosabiertos.oefa.gob.pe/developers/>.

### Temporary configuration for current session:

``` r

library(oefar)

# Set the API Key for the current R session
oefa_set_api_key("YOUR_API_KEY_HERE")
```

### Permanent configuration in local R environment (`.Renviron`):

It is recommended to add your key to your `.Renviron` file as
`OEFA_API_KEY`:

``` env
OEFA_API_KEY="YOUR_API_KEY_HERE"
```

The package will automatically detect the key via
[`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

------------------------------------------------------------------------

## Usage Examples

### 1. Catalog Exploration

``` r

library(oefar)

# List all OEFA data categories
categories <- oefa_list_categories()
print(categories)

# List all available datasets (datastreams)
catalog <- oefa_list_datastreams()
head(catalog[, c("guid", "title", "category_name")])

# Search datasets by keyword (e.g., "denuncias", "agua", "supervision")
complaints_ds <- oefa_search_datastreams("denuncias")
print(complaints_ds[, c("guid", "title")])
```

### 2. Downloading Datasets with Dedicated Functions

The package includes **98 dedicated helper functions** prefixed with
`oefa_get_<dataset_name>()` for direct download:

``` r

# Download SINADA complaints dataset
complaints <- oefa_get_denun_sinad(limit = 100)
print(complaints)

# Download Personnel Selection Processes
personnel <- oefa_get_proce_de_selec_de_71611(limit = 50)
print(personnel)

# Download Environmental Monitoring - Water (EAC)
water <- oefa_get_eac_compo_ambie_agua(limit = 100)
print(water)
```

### 3. Adjusting Request Timeout

For large data downloads or higher-latency connections, you can adjust
the request timeout parameter:

``` r

# Extend wait timeout to 120 seconds for a large dataset
large_complaints <- oefa_get_denun_sinad_61293(timeout = 120)

# Or using the generic oefa_get_data() function
generic_data <- oefa_get_data(guid = "DENUN-SINAD-61293", timeout = 180)
```

------------------------------------------------------------------------

## Data Attribution and Official Reference

Data distributed and consumed through this package belongs to and is
publicly provided by the **Agency for Environmental Assessment and
Enforcement (OEFA)** of the Government of Peru.

### Citing the Package and Data Source

In R, you can view formal citation details by running:

``` r

citation("oefar")
```

#### R Package Citation:

> Santos Andrade, P. E. (2026). *oefar: Access to the ‘OEFA’ Open Data
> API of Peru*. R package version 0.1.0. URL:
> <https://datosabiertos.oefa.gob.pe/>.

#### Official Data Source Reference (OEFA):

> Agency for Environmental Assessment and Enforcement - OEFA. (2026).
> *OEFA Open Data Portal* \[Online database\]. Government of Peru. URL:
> <https://datosabiertos.oefa.gob.pe/>.

------------------------------------------------------------------------

## License

This package is licensed under the [MIT
License](https://opensource.org/licenses/MIT). Environmental enforcement
data is property of the Peruvian state (OEFA) and is subject to the
terms of Peru’s National Open Data Platform.
