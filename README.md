---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# oefar <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->
[![R-CMD-check](https://img.shields.io/badge/R--CMD--check-passing-brightgreen.svg)](https://github.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R-version](https://img.shields.io/badge/R-%3E%3D%204.1.0-blue.svg)](https://www.r-project.org/)
[![R-CMD-check](https://github.com/PaulESantos/oefar/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/PaulESantos/oefar/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/PaulESantos/oefar/graph/badge.svg)](https://app.codecov.io/gh/PaulESantos/oefar)
<!-- badges: end -->

**`oefar`** es un paquete en R diseñado para facilitar el acceso, exploración y descarga directa de datos abiertos del **Organismo de Evaluación y Fiscalización Ambiental (OEFA)** de Perú a través de la API v2 de su portal de datos abiertos ([datosabiertos.oefa.gob.pe](https://datosabiertos.oefa.gob.pe/)).

El paquete proporciona **98 funciones específicas dedicadas** para cada conjunto de datos del catálogo oficial, formateo automático de nombres de columnas en formato limpio (minúsculas y guiones bajos), manejo configurable de tiempos límite de espera (`timeout`), y soporte nativo para `tibble`.

---

## Instalación

Puedes instalar la versión en desarrollo del paquete `oefar` desde GitHub usando `remotes` o `devtools`:

```r
# install.packages("remotes")
remotes::install_github("paulefrens/oefar")
```

---

## Configuración de la API Key

Para utilizar la API de Datos Abiertos del OEFA, se requiere contar con una **API Key personal**, la cual puede crearse y obtenerse directamente desde el portal de desarrolladores del OEFA: [https://datosabiertos.oefa.gob.pe/developers/](https://datosabiertos.oefa.gob.pe/developers/).

### Configuración temporal en la sesión:
```r
library(oefar)

# Establecer la API Key en la sesion actual
oefa_set_api_key("TU_API_KEY_AQUI")
```

### Configuración permanente en el entorno local de R (`.Renviron`):
Se recomienda añadir la clave al archivo `.Renviron` bajo el nombre `OEFA_API_KEY`:

```env
OEFA_API_KEY="TU_API_KEY_AQUI"
```

El paquete detectará automáticamente la clave cargada mediante `oefa_get_api_key()`.

---

## Ejemplos de Uso

### 1. Exploración del Catálogo de Datasets

```r
library(oefar)

# Listar todas las categorias de datos del OEFA
categorias <- oefa_list_categories()
print(categorias)

# Listar los 78 conjuntos de datos (datastreams) disponibles
catalogo <- oefa_list_datastreams()
head(catalogo[, c("guid", "title", "category_name")])

# Buscar datasets por palabras clave (ej. "denuncias", "agua", "supervisión")
denuncias_ds <- oefa_search_datastreams("denuncias")
print(denuncias_ds[, c("guid", "title")])
```

### 2. Descarga de Datasets con Funciones Dedicadas

El paquete incluye **78 funciones dedicadas** con el prefijo `oefa_get_<nombre_dataset>()` para la descarga directa:

```r
# Descargar el dataset de Denuncias SINADA
denuncias <- oefa_get_denun_sinad(limit = 100)
print(denuncias)

# Descargar Procesos de Selección de Personal
personal <- oefa_get_proce_de_selec_de_71611(limit = 50)
print(personal)

# Descargar Monitoreo de Agua (EAC)
agua <- oefa_get_eac_compo_ambie_agua(limit = 100)
print(agua)
```

### 3. Ajuste del Tiempo Límite (`timeout`)

Para descargas de volumen amplio o conexiones con alta latencia, puedes ajustar el tiempo límite directamente como argumento en la función:

```r
# Ampliar el tiempo limite de espera a 120 segundos para un dataset grande
denuncias_amplio <- oefa_get_denun_sinad_61293(timeout = 120)

# O mediante la funcion genérica oefa_get_data()
datos_gen <- oefa_get_data(guid = "DENUN-SINAD-61293", timeout = 180)
```

---

## Atribución y Referencia Oficial al OEFA

Los datos distribuidos y consumidos a través de este paquete pertenecen y son provistos públicamente por el **Organismo de Evaluación y Fiscalización Ambiental (OEFA)** del Gobierno del Perú.

### Citar el Paquete y la Fuente de Datos

En R, puedes obtener la citación formal ejecutando:

```r
citation("oefar")
```

#### Citación del Paquete R:
> Santos Andrade, P. E. (2026). *oefar: Acceso a la API de Datos Abiertos del OEFA de Perú*. Paquete en R versión 0.1.0. URL: https://datosabiertos.oefa.gob.pe/.

#### Referencia a la Fuente Oficial de Datos (OEFA):
> Organismo de Evaluación y Fiscalización Ambiental - OEFA. (2026). *Portal de Datos Abiertos del OEFA* [Base de datos en línea]. Gobierno del Perú. URL: https://datosabiertos.oefa.gob.pe/.

---

## Licencia

Este paquete está licenciado bajo la [Licencia MIT](LICENSE). Los datos de fiscalización ambiental son propiedad del estado peruano (OEFA) y se rigen bajo los términos de la Plataforma Nacional de Datos Abiertos del Perú.
