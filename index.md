# oefar ![](reference/figures/logo.png)

**`oefar`** es un paquete en R diseñado para facilitar el acceso,
exploración y descarga directa de datos abiertos del **Organismo de
Evaluación y Fiscalización Ambiental (OEFA)** de Perú a través de la API
v2 de su portal de datos abiertos
([datosabiertos.oefa.gob.pe](https://datosabiertos.oefa.gob.pe/)).

El paquete proporciona **98 funciones específicas dedicadas** para cada
conjunto de datos del catálogo oficial, formateo automático de nombres
de columnas en formato limpio (minúsculas y guiones bajos), manejo
configurable de tiempos límite de espera (`timeout`), y soporte nativo
para `tibble`.

------------------------------------------------------------------------

## Instalación

Puedes instalar la versión en desarrollo del paquete `oefar` desde
GitHub usando `remotes` o `devtools`:

``` r

# install.packages("remotes")
remotes::install_github("paulefrens/oefar")
```

------------------------------------------------------------------------

## Configuración de la API Key

Para utilizar la API de Datos Abiertos del OEFA, se requiere contar con
una **API Key personal**, la cual puede crearse y obtenerse directamente
desde el portal de desarrolladores del OEFA:
<https://datosabiertos.oefa.gob.pe/developers/>.

### Configuración temporal en la sesión:

``` r

library(oefar)

# Establecer la API Key en la sesion actual
oefa_set_api_key("TU_API_KEY_AQUI")
```

### Configuración permanente en el entorno local de R (`.Renviron`):

Se recomienda añadir la clave al archivo `.Renviron` bajo el nombre
`OEFA_API_KEY`:

``` env
OEFA_API_KEY="TU_API_KEY_AQUI"
```

El paquete detectará automáticamente la clave cargada mediante
[`oefa_get_api_key()`](https://paulesantos.github.io/oefar/reference/oefa_set_api_key.md).

------------------------------------------------------------------------

## Ejemplos de Uso

### 1. Exploración del Catálogo de Datasets

``` r

library(oefar)

# Listar todas las categorias de datos del OEFA
categorias <- oefa_list_categories()
print(categorias)
```

``` R
## # A tibble: 6 × 3
##   category_id category_name                total_datastreams
##   <chr>       <chr>                                    <int>
## 1 83677       "Información general"                        5
## 2 84080       "Información Institucional."                10
## 3 84081       "Evaluación Ambiental."                     45
## 4 84082       "Supervisión Ambiental"                      4
## 5 84083       "Fiscalización Ambiental"                    5
## 6 84084       "Políticas y estrategias "                   9
```

``` r

# Listar los 78 conjuntos de datos (datastreams) disponibles
catalogo <- oefa_list_datastreams()
head(catalogo[, c("guid", "title", "category_name")])
```

``` R
## # A tibble: 6 × 3
##   guid                    title                         category_name           
##   <chr>                   <chr>                         <chr>                   
## 1 PROYE-NORMA-EXTER       Proyectos Normativos Externos "Políticas y estrategia…
## 2 PROYE-NORMA-OEFA        Proyectos Normativos OEFA     "Políticas y estrategia…
## 3 INFOR-DE-LA-COORD-AGRIC Informes de supervisión 2018  "Supervisión Ambiental" 
## 4 DENUN-SINAD             Denuncias SINADA              "Políticas y estrategia…
## 5 PEDID-FISCA-2019-61940  Pedidos fiscalía 2019-2025    "Políticas y estrategia…
## 6 PROYE-TI-69998          Proyectos TI                  "Información Institucio…
```

``` r

# Buscar datasets por palabras clave (ej. "denuncias", "agua", "supervisión")
denuncias_ds <- oefa_search_datastreams("denuncias")
print(denuncias_ds[, c("guid", "title")])
```

``` R
## # A tibble: 2 × 2
##   guid              title                     
##   <chr>             <chr>                     
## 1 DENUN-SINAD       Denuncias SINADA          
## 2 DENUN-SINAD-61293 Denuncias SINADA 2019-2025
```

### 2. Descarga de Datasets con Funciones Dedicadas

El paquete incluye **78 funciones dedicadas** con el prefijo
`oefa_get_<nombre_dataset>()` para la descarga directa:

``` r

# Descargar el dataset de Denuncias SINADA
denuncias <- oefa_get_denun_sinad(limit = 100)
print(denuncias)
```

``` R
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
```

``` r

# Descargar Procesos de Selección de Personal
personal <- oefa_get_proce_de_selec_de_71611(limit = 50)
print(personal)
```

``` R
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
```

``` r

# Descargar Monitoreo de Agua (EAC)
agua <- oefa_get_eac_compo_ambie_agua(limit = 100)
print(agua)
```

``` R
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
```

### 3. Ajuste del Tiempo Límite (`timeout`)

Para descargas de volumen amplio o conexiones con alta latencia, puedes
ajustar el tiempo límite directamente como argumento en la función:

``` r

# Ampliar el tiempo limite de espera a 120 segundos para un dataset grande
denuncias_amplio <- oefa_get_denun_sinad_61293(timeout = 120)

# O mediante la funcion genérica oefa_get_data()
datos_gen <- oefa_get_data(guid = "DENUN-SINAD-61293", timeout = 180)
```

------------------------------------------------------------------------

## Atribución y Referencia Oficial al OEFA

Los datos distribuidos y consumidos a través de este paquete pertenecen
y son provistos públicamente por el **Organismo de Evaluación y
Fiscalización Ambiental (OEFA)** del Gobierno del Perú.

### Citar el Paquete y la Fuente de Datos

En R, puedes obtener la citación formal ejecutando:

``` r

citation("oefar")
```

``` R
## Para citar el paquete 'oefar' en publicaciones utilice: Para
## referenciar la fuente de datos oficial del OEFA:
## 
##   Santos Andrade, P. E. (2026). oefar: Acceso a la API de Datos
##   Abiertos del OEFA de Perú. R package version 0.1.0. URL:
##   https://datosabiertos.oefa.gob.pe/.
## 
##   Organismo de Evaluación y Fiscalización Ambiental - OEFA. (2026).
##   Portal de Datos Abiertos del OEFA [Base de datos en línea]. Gobierno
##   del Perú. URL: https://datosabiertos.oefa.gob.pe/.
## 
## To see these entries in BibTeX format, use 'print(<citation>,
## bibtex=TRUE)', 'toBibtex(.)', or set
## 'options(citation.bibtex.max=999)'.
```

#### Citación del Paquete R:

> Santos Andrade, P. E. (2026). *oefar: Acceso a la API de Datos
> Abiertos del OEFA de Perú*. Paquete en R versión 0.1.0. URL:
> <https://datosabiertos.oefa.gob.pe/>.

#### Referencia a la Fuente Oficial de Datos (OEFA):

> Organismo de Evaluación y Fiscalización Ambiental - OEFA. (2026).
> *Portal de Datos Abiertos del OEFA* \[Base de datos en línea\].
> Gobierno del Perú. URL: <https://datosabiertos.oefa.gob.pe/>.

------------------------------------------------------------------------

## Licencia

Este paquete está licenciado bajo la [Licencia
MIT](https://paulesantos.github.io/oefar/LICENSE). Los datos de
fiscalización ambiental son propiedad del estado peruano (OEFA) y se
rigen bajo los términos de la Plataforma Nacional de Datos Abiertos del
Perú.
