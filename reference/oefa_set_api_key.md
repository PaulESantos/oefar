# Configurar y consultar la API Key de OEFA

Obtiene, configura o verifica la presencia de la clave de API (API Key)
necesaria para interactuar con el portal de Datos Abiertos del OEFA
(Organismo de Evaluación y Fiscalización Ambiental de Perú). La API Key
puede crearse desde el portal de desarrolladores:
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

  Carácter. La API Key personal obtenida desde
  <https://datosabiertos.oefa.gob.pe/developers/>.

- install:

  Lógico. Si es `TRUE`, guarda la API Key de forma permanente en el
  archivo `.Renviron` del usuario. Por defecto es `FALSE`.

## Value

\- `oefa_get_api_key()`: Retorna la API Key activa como cadena de
caracteres. Si no está configurada, lanza un error informativo. -
`oefa_set_api_key()`: Retorna de forma invisible la API Key
configurada. - `oefa_has_api_key()`: Retorna `TRUE` si existe una API
Key configurada, de lo contrario `FALSE`.

## Examples

``` r
if (FALSE) { # \dontrun{
oefa_set_api_key("tu_api_key_aqui")
oefa_has_api_key()
key <- oefa_get_api_key()
} # }
```
