
<!-- README.md is generated from README.Rmd. Please edit that file -->

# oefar <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://img.shields.io/badge/R--CMD--check-passing-brightgreen.svg)](https://github.com/)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R-version](https://img.shields.io/badge/R-%3E%3D%204.1.0-blue.svg)](https://www.r-project.org/)
[![R-CMD-check](https://github.com/PaulESantos/oefar/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/PaulESantos/oefar/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/PaulESantos/oefar/graph/badge.svg)](https://app.codecov.io/gh/PaulESantos/oefar)
<!-- badges: end -->

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
remotes::install_github("paulefrens/oefar")
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

The package will automatically detect the key via `oefa_get_api_key()`.

------------------------------------------------------------------------

## Usage Examples

### 1. Catalog Exploration

``` r
library(oefar)

# List all OEFA data categories
categories <- oefa_list_categories()
print(categories)
```

    ## # A tibble: 6 × 3
    ##   category_id category_name                total_datastreams
    ##   <chr>       <chr>                                    <int>
    ## 1 83677       "Información general"                        5
    ## 2 84080       "Información Institucional."                10
    ## 3 84081       "Evaluación Ambiental."                     45
    ## 4 84082       "Supervisión Ambiental"                      4
    ## 5 84083       "Fiscalización Ambiental"                    5
    ## 6 84084       "Políticas y estrategias "                   9

``` r
# List all available datasets (datastreams)
catalog <- oefa_list_datastreams()
head(catalog[, c("guid", "title", "category_name")])
```

    ## # A tibble: 6 × 3
    ##   guid                    title                         category_name           
    ##   <chr>                   <chr>                         <chr>                   
    ## 1 PROYE-NORMA-EXTER       Proyectos Normativos Externos "Políticas y estrategia…
    ## 2 PROYE-NORMA-OEFA        Proyectos Normativos OEFA     "Políticas y estrategia…
    ## 3 INFOR-DE-LA-COORD-AGRIC Informes de supervisión 2018  "Supervisión Ambiental" 
    ## 4 DENUN-SINAD             Denuncias SINADA              "Políticas y estrategia…
    ## 5 PEDID-FISCA-2019-61940  Pedidos fiscalía 2019-2025    "Políticas y estrategia…
    ## 6 PROYE-TI-69998          Proyectos TI                  "Información Institucio…

``` r
# Search datasets by keyword (e.g., "denuncias", "agua", "supervision")
complaints_ds <- oefa_search_datastreams("denuncias")
print(complaints_ds[, c("guid", "title")])
```

    ## # A tibble: 2 × 2
    ##   guid              title                     
    ##   <chr>             <chr>                     
    ## 1 DENUN-SINAD       Denuncias SINADA          
    ## 2 DENUN-SINAD-61293 Denuncias SINADA 2019-2025

### 2. Downloading Datasets with Dedicated Functions

The package includes **98 dedicated helper functions** prefixed with
`oefa_get_<dataset_name>()` for direct download:

``` r
# Download SINADA complaints dataset
complaints <- oefa_get_denun_sinad(limit = 100)
print(complaints)
```

    ## # A tibble: 99 × 23
    ##    codigo_sinada medio_de_recepcion departamento provincia distrito            
    ##    <chr>         <chr>              <chr>        <chr>     <chr>               
    ##  1 SC-0013-2019  WEB                LIMA         LIMA      SAN MARTIN DE PORRES
    ##  2 SC-0012-2019  WEB                TUMBES       TUMBES    PAMPAS DE HOSPITAL  
    ##  3 SC-0011-2019  WEB                LIMA         HUAURA    SANTA MARIA         
    ##  4 SC-0010-2019  WEB                CALLAO       CALLAO    CALLAO              
    ##  5 SC-0009-2019  PERSONAL           LA LIBERTAD  TRUJILLO  TRUJILLO            
    ##  6 SC-0008-2019  WEB                CALLAO       CALLAO    CALLAO              
    ##  7 SC-0007-2019  WEB                LIMA         LIMA      SANTA ANITA         
    ##  8 SC-0006-2019  WEB                CUSCO        CUSCO     SAYLLA              
    ##  9 SC-0005-2019  WEB                LIMA         LIMA      CHORRILLOS          
    ## 10 SC-0004-2019  APP MOVIL          LIMA         LIMA      INDEPENDENCIA       
    ## # ℹ 89 more rows
    ## # ℹ 18 more variables: fecha_de_registro <chr>, actividad_economica <chr>,
    ## #   agua <chr>, aire <chr>, suelo <chr>, fauna <chr>, flora <chr>,
    ## #   poblacion <chr>, efluentes <chr>, residuos_solidos <chr>, gases_humo <chr>,
    ## #   material_particulado <chr>, tala <chr>, radiacion_no_ionizante <chr>,
    ## #   fuente_visual <chr>, fuente_sonora <chr>, indirecta_directa_mixta <chr>,
    ## #   estado <chr>

``` r
# Download Personnel Selection Processes
personnel <- oefa_get_proce_de_selec_de_71611(limit = 50)
print(personnel)
```

    ## # A tibble: 49 × 6
    ##    registro ano   meses estado     area                                cantidad
    ##    <chr>    <chr> <chr> <chr>      <chr>                               <chr>   
    ##  1 24273    2025  MARZO CUBIERTAS  PRESIDENCIA DEL CONSEJO DIRECTIVO   0       
    ##  2 24274    2025  MARZO DESIERTAS  PRESIDENCIA DEL CONSEJO DIRECTIVO   0       
    ##  3 24275    2025  MARZO CANCELADAS PRESIDENCIA DEL CONSEJO DIRECTIVO   0       
    ##  4 24276    2025  MARZO PROCESO    PRESIDENCIA DEL CONSEJO DIRECTIVO   0       
    ##  5 24277    2025  MARZO CUBIERTAS  TRIBUNAL DE FISCALIZACION AMBIENTAL 0       
    ##  6 24278    2025  MARZO DESIERTAS  TRIBUNAL DE FISCALIZACION AMBIENTAL 0       
    ##  7 24279    2025  MARZO CANCELADAS TRIBUNAL DE FISCALIZACION AMBIENTAL 0       
    ##  8 24280    2025  MARZO PROCESO    TRIBUNAL DE FISCALIZACION AMBIENTAL 0       
    ##  9 24281    2025  MARZO CUBIERTAS  ORGANO DE CONTROL INSTITUCIONAL     0       
    ## 10 24282    2025  MARZO DESIERTAS  ORGANO DE CONTROL INSTITUCIONAL     0       
    ## # ℹ 39 more rows

``` r
# Download Environmental Monitoring - Water (EAC)
water <- oefa_get_eac_compo_ambie_agua(limit = 100)
print(water)
```

    ## # A tibble: 99 × 20
    ##    numero_de_informe           nombre_de_la_evaluac…¹ etapa componente_ambiental
    ##    <chr>                       <chr>                  <chr> <chr>               
    ##  1 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  2 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  3 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  4 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  5 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  6 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  7 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  8 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ##  9 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ## 10 INFORME N° 00271-2022-OEFA… Evaluación ambiental … Cuar… Agua                
    ## # ℹ 89 more rows
    ## # ℹ abbreviated name: ¹​nombre_de_la_evaluacion
    ## # ℹ 16 more variables: procedencia_de_la_muestra <chr>,
    ## #   procedencia_especifica_de_la_muestra <chr>, nombre_del_punto <chr>,
    ## #   este <chr>, norte <chr>, altitud <chr>, zona <chr>, datum <chr>,
    ## #   descripcion_de_ubicacion <chr>, tipo_de_muestra <chr>,
    ## #   tipo_de_analisis <chr>, fecha <chr>, hora <chr>, valor <chr>, …

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
