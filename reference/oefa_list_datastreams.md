# Listar el catalogo de conjuntos de datos (datastreams) de OEFA

Obtiene el catalogo de conjuntos de datos (datastreams) disponibles en
el portal de Datos Abiertos del OEFA (Organismo de Evaluación y
Fiscalización Ambiental del Perú).

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

  Carácter opcional. Filtrar los conjuntos de datos por nombre o ID de
  categoría.

- query:

  Carácter opcional. Filtrar por termino clave de búsqueda en el titulo
  o descripción.

- limit:

  Entero opcional. Numero máximo de registros a retornar.

- offset:

  Entero opcional. Desplazamiento inicial para paginación.

- api_key:

  Carácter. API Key de OEFA. Por defecto utiliza
  [`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

## Value

Un [`tibble`](https://tibble.tidyverse.org/reference/tibble.html)
estructurado con los metadatos de los datastreams:

- `guid`: Identificador único del dataset.

- `title`: Titulo del conjunto de datos.

- `description`: Descripción detallada del dataset.

- `category_name`: Nombre de la categoría temática.

- `category_id`: Identificador de la categoría.

- `created_at`: Fecha de creación (timestamp Unix o formateado).

- `modified_at`: Fecha de ultima modificación.

- `link`: Enlace directo en el portal web.

## Examples

``` r
if (FALSE) { # \dontrun{
# Listar todos los datastreams
catalog <- oefa_list_datastreams()
head(catalog)

# Buscar datastreams sobre denuncias
denuncias_ds <- oefa_list_datastreams(query = "denuncias")
} # }
```
