# Prompt para generar el esquema OpenAPI de Open-Meteo

> Dónde se usa: en un chat normal de ChatGPT.  
> Objetivo: pedirle a ChatGPT que construya el esquema OpenAPI que luego se pegará en la sección Acciones del GPT.  
> Documento ficticio creado con fines formativos.

---

## Instrucción para alumnos

Copia el siguiente prompt completo y pégalo en un chat normal de ChatGPT.

Después de recibir la respuesta, copia todo el bloque YAML generado y pégalo en:

```text
Crear GPT → Configurar → Acciones → Crear nueva acción → Esquema
```

---

## Prompt para copiar

```text
Necesito crear una acción para un GPT personalizado usando la API pública de Open-Meteo.

Documentación de referencia:
https://open-meteo.com/en/docs

Endpoint que quiero usar:
https://api.open-meteo.com/v1/forecast

Crea un esquema OpenAPI 3.1.0 en formato YAML para consultar datos meteoenergéticos por latitud y longitud.

El esquema debe incluir:

- openapi: 3.1.0
- title: Open-Meteo Forecast API
- server: https://api.open-meteo.com
- path: /v1/forecast
- método: GET
- operationId: consultarPronosticoMeteoenergetico
- summary: Consultar pronóstico meteoenergético por coordenadas

Parámetros obligatorios:
- latitude
- longitude

Parámetros opcionales:
- current
- hourly
- daily
- forecast_days
- timezone

Valores por defecto:
- current: temperature_2m,relative_humidity_2m,cloud_cover,wind_speed_10m
- hourly: temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation,direct_radiation,direct_normal_irradiance
- daily: temperature_2m_max,temperature_2m_min,shortwave_radiation_sum
- forecast_days: 1
- timezone: Europe/Madrid

La respuesta 200 debe describirse como application/json y puede usar un schema de objeto flexible con propiedades:
- latitude
- longitude
- timezone
- current
- hourly
- daily

Devuelve únicamente el esquema YAML, sin explicaciones antes ni después.
```
## Prompt para copiar más orgánico
``` text
Estoy creando un GPT personalizado que debe consultar datos meteorológicos públicos para una ubicación.

Quiero usar la API de Open-Meteo:
https://open-meteo.com/en/docs

La idea es que el GPT pueda recibir una latitud y una longitud, consultar el pronóstico y devolver datos útiles como temperatura, nubosidad, viento y radiación solar.

Ayúdame a crear el esquema OpenAPI para configurar esta acción en ChatGPT.

Quiero que la acción use la API de forecast de Open-Meteo y que no requiera autenticación.

Devuélveme el esquema listo para copiar y pegar en la sección “Esquema” de acciones del GPT.
```
---

## Cómo revisar la respuesta

La respuesta generada debe empezar de forma similar a:

```yaml
openapi: 3.1.0
info:
  title: Open-Meteo Forecast API
```

Y debe incluir una sección como esta:

```yaml
servers:
  - url: https://api.open-meteo.com
```

También debe incluir:

```yaml
paths:
  /v1/forecast:
```

---

## Qué no se debe pegar en el campo Esquema

No pegues solo esta URL:

```text
https://api.open-meteo.com/v1/forecast
```

El campo Esquema necesita el YAML OpenAPI completo generado por ChatGPT.
