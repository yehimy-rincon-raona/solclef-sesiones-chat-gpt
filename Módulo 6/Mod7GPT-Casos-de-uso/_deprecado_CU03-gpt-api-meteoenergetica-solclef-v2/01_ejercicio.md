# Ejercicio 003 - GPT Monitor Meteoenergético Solclef

> Módulo 1 - GPTs personalizados  
> Duración estimada: 75 minutos  
> Documento ficticio creado con fines formativos

---

## Objetivo

Crear un GPT personalizado que consulte datos meteorológicos públicos mediante una API y los devuelva en una tabla sencilla.

A diferencia de ejercicios donde se copia un esquema ya preparado, aquí el alumno aprenderá a pedirle a ChatGPT que genere el esquema OpenAPI a partir de la documentación pública de la API.

---

## Contexto

En este ejercicio se utilizará la API pública de Open-Meteo.

El GPT consultará datos para una ubicación determinada mediante latitud y longitud. Los datos se usarán solo como contexto formativo, no como soporte para decisiones operativas reales.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---|---|---|
| `configuracion/instrucciones-gpt.md` | Instrucciones que se copian en el campo Instrucciones del GPT | `configuracion/` |
| `configuracion/prompt-para-generar-openapi.md` | Prompt que se usa en ChatGPT para generar el esquema OpenAPI | `configuracion/` |
| `insumos/coordenadas-ejemplo.md` | Coordenadas ficticias o públicas para probar la acción | `insumos/` |
| `prompts/prompts-de-uso.md` | Prompts cortos para probar el GPT después de configurarlo | `prompts/` |

---

## Instrucciones del ejercicio

### Paso 1 - Crear el GPT

1. Abre ChatGPT con una cuenta que permita crear GPTs.
2. Ve al menú lateral.
3. Selecciona **Explorar GPTs**.
4. Selecciona **Crear**.
5. Abre la pestaña **Configurar**.

Completa los campos principales.

**Nombre**

```text
GPT Monitor Meteoenergético Solclef
```

**Descripción**

```text
Consulta datos meteorológicos públicos por coordenadas y resume variables relevantes para contexto meteoenergético de forma clara y orientativa.
```

---

### Paso 2 - Copiar las instrucciones del GPT

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque completo indicado para el campo **Instrucciones**.
3. Pégalo en el campo **Instrucciones** del GPT.

---

### Paso 3 - Crear el esquema OpenAPI con ayuda de ChatGPT

En este ejercicio no se copia un esquema cerrado.

El alumno debe generar el esquema siguiendo este proceso:

1. Abre un chat normal de ChatGPT.
2. Abre el archivo `configuracion/prompt-para-generar-openapi.md`.
3. Copia el prompt completo.
4. Pégalo en ChatGPT.
5. Revisa que la respuesta empiece con:

```yaml
openapi: 3.1.0
```

6. Copia todo el bloque YAML generado.

---

### Paso 4 - Agregar la acción al GPT

1. Vuelve al creador del GPT.
2. Baja hasta la sección **Acciones**.
3. Selecciona **Crear nueva acción**.
4. En **Autenticación**, selecciona:

```text
Ninguno
```

5. En el campo **Esquema**, pega el YAML generado por ChatGPT.
6. En **Política de privacidad**, pega:

```text
https://open-meteo.com/en/terms
```

7. Haz clic en **Formato**.
8. Revisa que aparezca una acción disponible.

La acción debería tener un nombre similar a:

```text
consultarPronosticoMeteoenergetico
```

---

### Paso 5 - Configurar capacidades

Configura las capacidades así:

| Capacidad | Estado recomendado |
|---|---|
| Búsqueda web | Desactivada |
| Generación de imágenes | Desactivada |
| Canvas | Opcional |
| Análisis de datos | Opcional |
| Acciones | Activada |

---

### Paso 6 - Probar la acción

Abre una conversación con el GPT y usa una coordenada del archivo `insumos/coordenadas-ejemplo.md`.

Prompt de prueba:

```text
Consulta el contexto meteoenergético para Badajoz, España usando las coordenadas de ejemplo. Resume temperatura, nubosidad, viento y radiación solar.
```
```text
Consulta el contexto meteoenergético para Badajoz, España.
Usa las coordenadas de referencia del ejercicio si las necesitas.
```



---

## Entregable

Al finalizar el ejercicio debes tener:

1. Un GPT configurado.
2. Una acción conectada a Open-Meteo.
3. Una consulta ejecutada correctamente.
4. Una tabla de resultados generada por el GPT.
5. Una nota breve sobre qué limitaciones tiene usar una API pública para análisis meteoenergético.

---

## Criterios de éxito

| Criterio | Verificación |
|---|---|
| El GPT tiene instrucciones claras | Sí / No |
| El alumno generó el esquema OpenAPI con ChatGPT | Sí / No |
| El esquema incluye `servers` | Sí / No |
| El esquema incluye `/v1/forecast` | Sí / No |
| La acción aparece en Acciones disponibles | Sí / No |
| El GPT consulta la API correctamente | Sí / No |
| La respuesta no inventa datos | Sí / No |
| El GPT advierte que los datos son orientativos | Sí / No |

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---|---|---|
| Aparece `null` en el esquema | No se pegó un esquema OpenAPI válido | Volver a generar el esquema con el prompt del archivo |
| Error: no se encontró URL válida en `servers` | Se pegó solo la URL del endpoint | Pegar el YAML completo generado por ChatGPT |
| No aparece ninguna acción disponible | El YAML tiene errores de formato | Revisar indentación y hacer clic en Formato |
| La acción pide autenticación | Se configuró autenticación por error | Cambiar autenticación a Ninguno |
| El GPT responde sin consultar la acción | Las instrucciones no indican usar la acción | Revisar `instrucciones-gpt.md` |
| El GPT da recomendaciones operativas | Faltan límites en instrucciones | Reforzar que solo entrega lectura orientativa |

---

## Reflexión final

Cuando termines, responde:

- ¿Qué diferencia hay entre pegar una URL y pegar un esquema OpenAPI?
- ¿Qué parte del ejercicio facilita ChatGPT?
- ¿Qué riesgos existen al usar datos públicos para análisis operativo?
- ¿Qué otros casos podrían conectarse a una API pública?
