# Esquema OpenAPI - Accion para Open-Meteo

> **Donde se usa:** Seccion **Acciones** del GPT.  
> **Objetivo:** Evitar que el participante tenga que construir una URL larga manualmente.

---

## Instruccion para el ejercicio

Copia el siguiente bloque completo y pegalo en el editor de esquema de la accion del GPT.

```yaml
openapi: 3.1.0
info:
  title: Open-Meteo Forecast API simplificada
  description: Consulta condiciones meteorologicas actuales para una ubicacion usando coordenadas.
  version: 1.0.0
servers:
  - url: https://api.open-meteo.com
paths:
  /v1/forecast:
    get:
      operationId: obtenerCondicionesMeteoenergeticas
      summary: Obtener condiciones meteorologicas actuales
      description: Devuelve datos actuales de temperatura, nubosidad, viento y radiacion solar para una ubicacion indicada por latitud y longitud.
      parameters:
        - name: latitude
          in: query
          required: true
          description: Latitud de la ubicacion en formato decimal.
          schema:
            type: number
            example: 38.8794
        - name: longitude
          in: query
          required: true
          description: Longitud de la ubicacion en formato decimal. Usar valores negativos para ubicaciones al oeste de Greenwich.
          schema:
            type: number
            example: -6.9707
        - name: current
          in: query
          required: false
          description: Variables actuales que se quieren consultar.
          schema:
            type: string
            default: temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation
            example: temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation
        - name: timezone
          in: query
          required: false
          description: Zona horaria para devolver la hora local.
          schema:
            type: string
            default: Europe/Madrid
            example: Europe/Madrid
      responses:
        '200':
          description: Respuesta meteorologica obtenida correctamente.
          content:
            application/json:
              schema:
                type: object
                properties:
                  latitude:
                    type: number
                  longitude:
                    type: number
                  timezone:
                    type: string
                  current_units:
                    type: object
                  current:
                    type: object
                    properties:
                      time:
                        type: string
                      temperature_2m:
                        type: number
                      cloud_cover:
                        type: number
                      wind_speed_10m:
                        type: number
                      shortwave_radiation:
                        type: number
        '400':
          description: Solicitud incorrecta. Revisar coordenadas o parametros.
```

---

## Parametros usados en este ejercicio

| Parametro | Obligatorio | Ejemplo | Explicacion |
|-----------|-------------|---------|-------------|
| `latitude` | Si | `38.8794` | Latitud de la ubicacion |
| `longitude` | Si | `-6.9707` | Longitud de la ubicacion |
| `current` | No | `temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation` | Variables actuales a consultar |
| `timezone` | No | `Europe/Madrid` | Zona horaria de la respuesta |

---

## URL simple de referencia

La accion usa esta base:

```text
https://api.open-meteo.com/v1/forecast
```

Ejemplo de URL completa solo para entender el funcionamiento:

```text
https://api.open-meteo.com/v1/forecast?latitude=38.8794&longitude=-6.9707&current=temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation&timezone=Europe/Madrid
```

Durante el ejercicio, no es necesario que el participante escriba esta URL completa. El GPT enviara los parametros mediante la accion.
