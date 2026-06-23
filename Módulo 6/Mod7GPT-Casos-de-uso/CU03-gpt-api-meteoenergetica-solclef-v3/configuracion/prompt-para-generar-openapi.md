# Prompt para generar el esquema OpenAPI con ActionsGPT o ChatGPT

> Dónde se usa: en ActionsGPT o en un chat normal de ChatGPT.  
> Objetivo: pedir ayuda para crear el esquema OpenAPI a partir de la documentación pública de Open-Meteo.  
> Documento ficticio creado con fines formativos.

---

## Instrucción para alumnos

Copia el siguiente prompt y pégalo en ActionsGPT o en un chat normal de ChatGPT.

Después de recibir la respuesta, copia todo el bloque YAML generado y pégalo en:

```text
Crear GPT → Configurar → Acciones → Crear nueva acción → Esquema
```

---

## Prompt principal

```text
Estoy creando un GPT personalizado que debe consultar datos meteorológicos públicos para una ubicación.

Quiero usar la API de Open-Meteo:
https://open-meteo.com/en/docs

La idea es que el GPT pueda recibir una latitud y una longitud, consultar el pronóstico y devolver datos útiles como temperatura, nubosidad, viento y radiación solar.

Ayúdame a crear el esquema OpenAPI para configurar esta acción en ChatGPT.

Quiero que la acción use la API de forecast de Open-Meteo y que no requiera autenticación.

Devuélveme el esquema listo para copiar y pegar en la sección “Esquema” de acciones del GPT.
```

---

## Prompt de ajuste si el resultado queda incompleto

Usa este mensaje solo si ActionsGPT o ChatGPT no genera un esquema válido o si no aparece la acción en el creador del GPT:

```text
Ajusta el esquema para que sea compatible con acciones de GPT.

Debe usar OpenAPI 3.1.0.

La URL base debe ser:
https://api.open-meteo.com

El endpoint debe ser:
/v1/forecast

Incluye estos parámetros:
- latitude
- longitude
- current
- hourly
- daily
- forecast_days
- timezone

Usa este operationId:
consultarPronosticoMeteoenergetico

La respuesta debe ser application/json.

Devuelve solo el YAML final, sin explicación.
```

---

## Cómo revisar la respuesta

La respuesta generada debe incluir una sección similar a:

```yaml
openapi: 3.1.0
```

También debe incluir:

```yaml
servers:
  - url: https://api.open-meteo.com
```

Y:

```yaml
paths:
  /v1/forecast:
```

Debe incluir una operación parecida a:

```yaml
operationId: consultarPronosticoMeteoenergetico
```

---

## Qué no se debe pegar en el campo Esquema

No pegues solo esta URL:

```text
https://api.open-meteo.com/v1/forecast
```

El campo Esquema necesita el YAML OpenAPI completo generado por ActionsGPT o ChatGPT.
