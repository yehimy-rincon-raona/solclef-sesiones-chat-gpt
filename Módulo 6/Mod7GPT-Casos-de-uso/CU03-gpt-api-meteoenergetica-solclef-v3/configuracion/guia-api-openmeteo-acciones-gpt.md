# Cómo entender una API y preparar una acción para un GPT

> Documento de apoyo para el caso de uso CU03 - GPT Monitor Meteoenergético Solclef  
> Documento ficticio creado con fines formativos

---

## 1. Objetivo de este documento

Este documento explica, paso a paso y en lenguaje sencillo, cómo pasar de una documentación pública de API a una acción usable dentro de un GPT personalizado.

El ejemplo usa la API pública de Open-Meteo porque permite consultar datos meteorológicos sin autenticación.

La idea no es que memorices OpenAPI ni programación.  
La idea es que entiendas el flujo básico:

```text
Documentación de la API → identificar servidor y endpoint → entender parámetros → generar esquema OpenAPI → pegar esquema en Acciones del GPT
```

---

## 2. Qué es una API, explicado simple

Una API es una forma de pedirle datos a un sistema externo.

En este caso:

- El sistema externo es Open-Meteo.
- El dato que queremos pedir es el pronóstico meteorológico.
- El GPT necesita una acción para poder hacer esa consulta.
- La acción necesita un esquema OpenAPI para saber cómo llamar a la API.

Dicho de forma simple:

```text
El GPT no puede adivinar cómo consultar la API.
Hay que decirle: a qué URL llamar, qué datos enviar y qué respuesta esperar.
```

---

## 3. Qué es Open-Meteo

Open-Meteo es una API pública de datos meteorológicos.

Documentación:

```text
https://open-meteo.com/en/docs
```

Para este ejercicio se usará la sección de pronóstico meteorológico, llamada:

```text
Weather Forecast API
```

Esta API permite consultar datos como:

- Temperatura.
- Humedad relativa.
- Nubosidad.
- Velocidad del viento.
- Radiación solar.
- Radiación directa.
- Irradiancia normal directa.
- Variables horarias.
- Variables diarias.
- Condiciones actuales.

---

## 4. Cómo encontrar el endpoint en la documentación

Cuando entres a la documentación de Open-Meteo, busca la sección llamada:

```text
API Documentation
```

Puedes usar el buscador del navegador:

```text
Ctrl + F
```

Y buscar:

```text
/v1/forecast
```

En la documentación aparece el endpoint:

```text
/v1/forecast
```

Ese fragmento es la ruta de la API.

---

## 5. Diferencia entre servidor, endpoint y URL completa

Una API suele dividirse en varias partes.

### 5.1 Servidor

El servidor es el dominio base de la API.

En este caso:

```text
https://api.open-meteo.com
```

### 5.2 Endpoint o path

El endpoint es la ruta específica que queremos consultar.

En este caso:

```text
/v1/forecast
```

### 5.3 URL completa

La URL completa se forma uniendo el servidor y el endpoint:

```text
https://api.open-meteo.com/v1/forecast
```

---

## 6. Cómo se arma la URL completa

La fórmula es:

```text
servidor + endpoint = URL completa
```

Aplicado al caso:

```text
https://api.open-meteo.com + /v1/forecast
```

Resultado:

```text
https://api.open-meteo.com/v1/forecast
```

---

## 7. Por qué no basta con pegar la URL en Acciones

En la pantalla de acciones del GPT existe un campo llamado:

```text
Esquema
```

Ese campo no espera una URL suelta.

No debes pegar solo esto:

```text
https://api.open-meteo.com/v1/forecast
```

El campo **Esquema** espera un contrato OpenAPI.

Ese contrato le dice al GPT:

- Qué servidor usar.
- Qué endpoint consultar.
- Qué método usar.
- Qué parámetros pedir.
- Qué parámetros son obligatorios.
- Qué respuesta puede recibir.
- Qué nombre tendrá la acción.

---

## 8. Qué es un esquema OpenAPI

Un esquema OpenAPI es una descripción estructurada de una API.

Para este ejercicio, el esquema debe explicar algo como esto:

```text
Usa el servidor https://api.open-meteo.com.
Consulta la ruta /v1/forecast.
Usa el método GET.
Pide latitude y longitude.
Opcionalmente puede pedir current, hourly, daily, forecast_days y timezone.
La respuesta será un JSON.
```

En formato OpenAPI, eso se ve más o menos así:

```yaml
openapi: 3.1.0
info:
  title: Open-Meteo Forecast API
  version: 1.0.0
servers:
  - url: https://api.open-meteo.com
paths:
  /v1/forecast:
    get:
      operationId: consultarPronosticoMeteoenergetico
```

---

## 9. Qué significa cada parte del esquema

### 9.1 `openapi`

Indica la versión del estándar OpenAPI.

```yaml
openapi: 3.1.0
```

### 9.2 `info`

Describe la API.

```yaml
info:
  title: Open-Meteo Forecast API
  version: 1.0.0
```

### 9.3 `servers`

Indica el servidor base.

```yaml
servers:
  - url: https://api.open-meteo.com
```

### 9.4 `paths`

Indica la ruta o endpoint.

```yaml
paths:
  /v1/forecast:
```

### 9.5 `get`

Indica el método de consulta.

```yaml
get:
```

En este ejercicio usamos `GET` porque estamos consultando datos, no enviando información para crear o modificar algo.

### 9.6 `operationId`

Es el nombre interno de la acción.

```yaml
operationId: consultarPronosticoMeteoenergetico
```

Este nombre ayuda a identificar la acción dentro del GPT.

---

## 10. Qué parámetros necesita Open-Meteo

Para consultar el pronóstico, Open-Meteo necesita como mínimo coordenadas geográficas:

```text
latitude
longitude
```

Ejemplo:

```text
latitude=38.8794
longitude=-6.9707
```

También se pueden pedir variables específicas.

Por ejemplo, variables actuales:

```text
current=temperature_2m,relative_humidity_2m,cloud_cover,wind_speed_10m
```

Variables horarias:

```text
hourly=temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation,direct_radiation,direct_normal_irradiance
```

Variables diarias:

```text
daily=temperature_2m_max,temperature_2m_min,shortwave_radiation_sum
```

Zona horaria:

```text
timezone=Europe/Madrid
```

Número de días:

```text
forecast_days=1
```

---

## 11. Cómo se ve una URL con parámetros

Una URL con parámetros se arma así:

```text
URL_BASE?parametro1=valor1&parametro2=valor2&parametro3=valor3
```

Ejemplo con Open-Meteo:

```text
https://api.open-meteo.com/v1/forecast?latitude=38.8794&longitude=-6.9707&current=temperature_2m,cloud_cover,wind_speed_10m&timezone=Europe/Madrid
```

Partes de la URL:

| Parte | Significado |
|---|---|
| `https://api.open-meteo.com/v1/forecast` | URL del endpoint |
| `?` | Inicio de los parámetros |
| `latitude=38.8794` | Latitud |
| `&` | Separador entre parámetros |
| `longitude=-6.9707` | Longitud |
| `current=...` | Variables actuales solicitadas |
| `timezone=Europe/Madrid` | Zona horaria |

---

## 12. Cómo pedirle a ActionsGPT que cree el esquema

En vez de escribir un prompt demasiado técnico, puedes pedirlo de forma natural.

### Prompt principal recomendado

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

## 13. Qué revisar en la respuesta de ActionsGPT

Cuando ActionsGPT genere el esquema, revisa que incluya estas partes.

### Debe incluir versión OpenAPI

```yaml
openapi: 3.1.0
```

### Debe incluir el servidor

```yaml
servers:
  - url: https://api.open-meteo.com
```

### Debe incluir el endpoint

```yaml
paths:
  /v1/forecast:
```

### Debe incluir un método GET

```yaml
get:
```

### Debe incluir un nombre de acción

```yaml
operationId: consultarPronosticoMeteoenergetico
```

### Debe incluir parámetros

Como mínimo:

```text
latitude
longitude
```

Y opcionalmente:

```text
current
hourly
daily
forecast_days
timezone
```

---

## 14. Prompt de ajuste si el primer resultado queda incompleto

Si ActionsGPT devuelve un esquema incompleto, usa este mensaje:

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

## 15. Dónde pegar el esquema

Cuando ActionsGPT entregue el YAML:

1. Copia todo el bloque.
2. Vuelve al creador del GPT.
3. Entra a **Configurar**.
4. Baja a **Acciones**.
5. Selecciona **Crear nueva acción**.
6. En **Autenticación**, selecciona:

```text
Ninguno
```

7. En **Esquema**, pega el YAML.
8. En **Política de privacidad**, pega:

```text
https://open-meteo.com/en/terms
```

9. Haz clic en **Formato**.
10. Revisa que aparezca una acción disponible.

---

## 16. Cómo saber si quedó bien

Si el esquema está correcto, en la sección de acciones disponibles debería aparecer una operación con un nombre parecido a:

```text
consultarPronosticoMeteoenergetico
```

Si no aparece, revisa:

- Que no hayas pegado solo la URL.
- Que el esquema empiece con `openapi: 3.1.0`.
- Que tenga `servers`.
- Que tenga `paths`.
- Que tenga `/v1/forecast`.
- Que tenga `operationId`.
- Que el YAML esté bien indentado.

---

## 17. Cómo probar el GPT

Después de guardar la acción, abre una conversación con el GPT y escribe:

```text
Consulta las condiciones meteoenergéticas para las coordenadas 38.8794, -6.9707. Resume temperatura, nubosidad, viento y radiación solar.
```

El GPT debería:

- Usar la acción.
- Consultar Open-Meteo.
- Devolver una tabla.
- Explicar los datos en lenguaje simple.
- Aclarar que la lectura es orientativa.

---

## 18. Error común: pegar solo la URL

### Error

Pegar esto en el campo **Esquema**:

```text
https://api.open-meteo.com/v1/forecast
```

### Por qué falla

Porque el campo **Esquema** necesita un contrato OpenAPI completo.

### Solución

Usar ActionsGPT para generar el YAML OpenAPI y pegar ese YAML en el campo **Esquema**.

---

## 19. Diferencia entre URL y esquema OpenAPI

| Elemento | Qué es | Ejemplo | Dónde se usa |
|---|---|---|---|
| Servidor | Dominio base de la API | `https://api.open-meteo.com` | En `servers` |
| Endpoint | Ruta específica | `/v1/forecast` | En `paths` |
| URL completa | Servidor + endpoint | `https://api.open-meteo.com/v1/forecast` | Como referencia o prueba |
| Parámetros | Datos que se envían a la API | `latitude`, `longitude` | En `parameters` |
| Esquema OpenAPI | Contrato completo de la API | YAML estructurado | En el campo **Esquema** |

---

## 20. Resumen final

Para conectar una API a un GPT no basta con saber la URL.

El proceso correcto es:

```text
1. Abrir la documentación de la API.
2. Identificar el servidor.
3. Identificar el endpoint.
4. Identificar los parámetros.
5. Pedirle a ActionsGPT que construya el esquema OpenAPI.
6. Revisar que el esquema tenga servers, paths, operationId y parameters.
7. Pegar el YAML en Acciones.
8. Probar el GPT con una consulta real.
```

La idea clave es:

```text
La URL sirve para entender a dónde llamar.
El esquema OpenAPI sirve para que el GPT sepa cómo llamar.
```
