# oefar 0.1.0

* Versión inicial del paquete `oefar` para acceder a la API de Datos Abiertos del Organismo de Evaluación y Fiscalización Ambiental (OEFA) de Perú.
* Soporte para 98 funciones específicas de descarga de datos (`oefa_get_*`).
* Limpieza automática de nombres de columnas con `clean_column_names()` basada en convenciones `janitor`.
* Funciones de autenticación y gestión de API Key (`oefa_set_api_key`, `oefa_get_api_key`, `oefa_has_api_key`).
* Documentación detallada de campos basada en el Diccionario de Datos Oficial del OEFA 2022.
