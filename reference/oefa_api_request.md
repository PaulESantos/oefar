# Realizar peticiones HTTP a la API de OEFA

Helper interno para construir y ejecutar solicitudes HTTP hacia los
endpoints de la API v2 de Datos Abiertos del OEFA utilizando httr2.

## Usage

``` r
oefa_api_request(
  endpoint,
  query = list(),
  timeout = 60,
  api_key = oefa_get_api_key()
)
```

## Arguments

- endpoint:

  Ruta relativa del endpoint (ej. "datastreams/").

- query:

  Lista de parametros de consulta (query parameters).

- timeout:

  Entero. Tiempo maximo de espera en segundos para la peticion HTTP (por
  defecto 60).

- api_key:

  Clave de autenticacion API Key.

## Value

Objeto httr2_response.
