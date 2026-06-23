# CU03 - Paso a paso - Configuracion del GPT Monitor Meteoenergetico Solclef

> Modulo 01 - GPTs personalizados - Solclef

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `configuracion/instrucciones-gpt.md` | Se copia en el campo Instrucciones del GPT. |
| `configuracion/openapi-schema.md` | Se copia en el editor de acciones del GPT. |
| `insumos/coordenadas-ejemplo.md` | Contiene coordenadas listas para probar. |
| `prompts/prompts-de-uso.md` | Contiene prompts listos para validar el GPT. |

---

## 1. Acceder al creador de GPTs

1. Ve a ChatGPT.
2. Inicia sesion con una cuenta que permita crear GPTs.
3. En el menu lateral, selecciona **Explorar GPTs**.
4. Selecciona **Crear**.
5. Abre la pestana **Configurar**.

---

## 2. Completar nombre y descripcion

**Nombre**

```text
GPT Monitor Meteoenergetico Solclef
```

**Descripcion**

```text
Consulta datos meteorologicos publicos mediante una API y resume condiciones de temperatura, nubosidad, viento y radiacion solar para una ubicacion indicada por coordenadas.
```

---

## 3. Configurar iniciadores de conversacion

Agrega estos iniciadores:

```text
Consulta las condiciones meteoenergeticas para una ubicacion por coordenadas
```

```text
Resume temperatura, nubosidad, viento y radiacion solar para esta ubicacion
```

```text
Explica que datos devuelve la API y como debo interpretarlos
```

```text
Prueba la consulta con las coordenadas de ejemplo
```

---

## 4. Copiar las instrucciones

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque indicado para el campo **Instrucciones**.
3. Pegalo en el campo **Instrucciones** del GPT.
4. Guarda los cambios.

---

## 5. Configurar capacidades

| Capacidad | Estado |
|-----------|--------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Opcional |
| Analisis de datos | Desactivada |
| Acciones | Activada |

La busqueda web se deja desactivada porque el GPT debe consultar la API mediante la accion configurada, no buscar informacion general en internet.

---

## 6. Crear la accion

1. En la seccion **Acciones**, selecciona **Crear nueva accion**.
2. Busca el campo donde se pega el esquema OpenAPI.
3. Abre `configuracion/openapi-schema.md`.
4. Copia el bloque que empieza con:

```yaml
openapi: 3.1.0
```

5. Pegalo completo en el editor de la accion.
6. Revisa que no falten espacios ni lineas.
7. Guarda la accion.

---

## 7. No usar la URL larga manualmente

La documentacion de la API puede generar URLs largas con muchos parametros. Para este ejercicio no es necesario copiarlas manualmente.

El esquema ya deja configurada la ruta principal:

```text
https://api.open-meteo.com/v1/forecast
```

El GPT solo necesita enviar estos parametros:

| Parametro | Que significa | Ejemplo |
|-----------|---------------|---------|
| `latitude` | Latitud de la ubicacion | `38.8794` |
| `longitude` | Longitud de la ubicacion | `-6.9707` |
| `current` | Variables actuales solicitadas | `temperature_2m,cloud_cover,wind_speed_10m,shortwave_radiation` |
| `timezone` | Zona horaria | `Europe/Madrid` |

---

## 8. Probar con coordenadas de ejemplo

Abre `insumos/coordenadas-ejemplo.md` y usa la primera ubicacion.

Prompt recomendado:

```text
Consulta las condiciones meteoenergeticas para latitud 38.8794 y longitud -6.9707. Devuelve una tabla simple y una lectura breve no critica.
```

---

## 9. Validar el resultado

Comprueba que la respuesta incluya:

- Coordenadas consultadas.
- Fecha u hora de los datos.
- Temperatura.
- Nubosidad.
- Velocidad del viento.
- Radiacion solar, si esta disponible.
- Interpretacion breve.
- Advertencia de que no sustituye sistemas tecnicos ni criterio operativo.

---

## 10. Errores frecuentes

| Sintoma | Causa probable | Como resolverlo |
|---------|----------------|-----------------|
| La accion no aparece disponible | No se guardo correctamente el esquema | Volver a pegar `openapi-schema.md` y guardar |
| El GPT pide una URL larga | Las instrucciones no estan completas | Revisar `instrucciones-gpt.md` |
| La API devuelve error | Coordenadas mal escritas o parametro faltante | Usar coordenadas de ejemplo |
| No aparece radiacion solar | Variable no disponible en la respuesta actual | Indicar que el dato no fue devuelto |
| El GPT inventa datos | Faltan reglas de no invencion | Reforzar instrucciones y probar de nuevo |

---

## 11. Cierre del ejercicio

El resultado esperado no es una herramienta operacional avanzada. El objetivo es entender como un GPT puede conectarse a una API publica, obtener datos estructurados y presentarlos de forma comprensible.
