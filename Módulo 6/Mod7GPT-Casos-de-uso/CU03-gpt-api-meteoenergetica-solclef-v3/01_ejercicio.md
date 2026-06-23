# Ejercicio 003 - GPT Monitor Meteoenergético Solclef

> Módulo 1 - GPTs personalizados  
> Duración estimada: 75 minutos  
> Documento ficticio creado con fines formativos

---

## Objetivo

Crear un GPT personalizado que consulte datos meteorológicos públicos mediante una API y los devuelva en una tabla sencilla.

El usuario final no tendrá que escribir coordenadas. Escribirá una ubicación de prueba, como Badajoz o Sevilla, y el GPT usará un archivo de conocimiento para encontrar las coordenadas correspondientes.

---

## Contexto

En este ejercicio se utilizará la API pública de Open-Meteo.

El GPT consultará datos para ubicaciones de prueba incluidas en un archivo de conocimiento. Los datos se usarán solo como contexto formativo, no como soporte para decisiones operativas reales.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---|---|---|
| `configuracion/instrucciones-gpt.md` | Instrucciones que se copian en el campo Instrucciones del GPT | `configuracion/` |
| `configuracion/prompt-para-generar-openapi.md` | Prompt orgánico para pedir a ActionsGPT o ChatGPT el esquema OpenAPI | `configuracion/` |
| `insumos/ubicaciones-de-prueba.md` | Archivo que se carga como conocimiento del GPT | `insumos/` |
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
Consulta datos meteorológicos públicos para ubicaciones de prueba y resume variables relevantes para contexto meteoenergético de forma clara y orientativa.
```

---

### Paso 2 - Copiar las instrucciones del GPT

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque completo indicado para el campo **Instrucciones**.
3. Pégalo en el campo **Instrucciones** del GPT.

---

### Paso 3 - Cargar el archivo de ubicaciones

1. En la sección **Conocimiento**, selecciona **Subir archivos**.
2. Sube el archivo:

```text
insumos/ubicaciones-de-prueba.md
```

Este archivo permite que el GPT entienda que, por ejemplo:

```text
Badajoz = latitud 38.8794, longitud -6.9707
```

Así el alumno podrá probar el GPT escribiendo una ciudad, no coordenadas.

---

### Paso 4 - Crear el esquema OpenAPI con ayuda de ActionsGPT o ChatGPT

En este ejercicio no se copia un esquema cerrado.

El alumno debe generar el esquema siguiendo este proceso:

1. Abre ActionsGPT o un chat normal de ChatGPT.
2. Abre el archivo `configuracion/prompt-para-generar-openapi.md`.
3. Copia el prompt principal.
4. Pégalo en ActionsGPT o ChatGPT.
5. Revisa que la respuesta genere un bloque YAML.
6. Copia todo el bloque YAML generado.

El YAML debe empezar con algo similar a:

```yaml
openapi: 3.1.0
```

---

### Paso 5 - Agregar la acción al GPT

1. Vuelve al creador del GPT.
2. Baja hasta la sección **Acciones**.
3. Selecciona **Crear nueva acción**.
4. En **Autenticación**, selecciona:

```text
Ninguno
```

5. En el campo **Esquema**, pega el YAML generado.
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

### Paso 6 - Configurar capacidades

Configura las capacidades así:

| Capacidad | Estado recomendado |
|---|---|
| Búsqueda web | Desactivada |
| Generación de imágenes | Desactivada |
| Canvas | Opcional |
| Análisis de datos | Opcional |
| Acciones | Activada |

---

### Paso 7 - Probar la acción con una ciudad

Abre una conversación con el GPT y usa este prompt:

```text
Consulta el contexto meteoenergético para Badajoz.
```

El GPT debe:

1. Buscar Badajoz en el archivo de ubicaciones.
2. Identificar sus coordenadas.
3. Usar la acción de Open-Meteo.
4. Devolver una tabla clara con datos disponibles.

---

## Entregable

Al finalizar el ejercicio debes tener:

1. Un GPT configurado.
2. El archivo de ubicaciones cargado como conocimiento.
3. Una acción conectada a Open-Meteo.
4. Una consulta ejecutada usando el nombre de una ciudad.
5. Una tabla de resultados generada por el GPT.
6. Una nota breve sobre qué limitaciones tiene usar una API pública para análisis meteoenergético.

---

## Criterios de éxito

| Criterio | Verificación |
|---|---|
| El GPT tiene instrucciones claras | Sí / No |
| El archivo de ubicaciones fue cargado como conocimiento | Sí / No |
| El alumno generó el esquema OpenAPI con ActionsGPT o ChatGPT | Sí / No |
| El esquema incluye `servers` | Sí / No |
| El esquema incluye `/v1/forecast` | Sí / No |
| La acción aparece en Acciones disponibles | Sí / No |
| El GPT consulta la API usando una ciudad de prueba | Sí / No |
| La respuesta no inventa datos | Sí / No |
| El GPT advierte que los datos son orientativos | Sí / No |

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---|---|---|
| El GPT pide coordenadas aunque se escribió Badajoz | No se cargó `ubicaciones-de-prueba.md` como conocimiento | Cargar el archivo en Conocimiento |
| Aparece `null` en el esquema | No se pegó un esquema OpenAPI válido | Volver a generar el esquema con el prompt del archivo |
| Error: no se encontró URL válida en `servers` | Se pegó solo la URL del endpoint | Pegar el YAML completo generado por ActionsGPT o ChatGPT |
| No aparece ninguna acción disponible | El YAML tiene errores de formato | Revisar indentación y hacer clic en Formato |
| La acción pide autenticación | Se configuró autenticación por error | Cambiar autenticación a Ninguno |
| El GPT responde sin consultar la acción | Las instrucciones no indican usar la acción | Revisar `instrucciones-gpt.md` |
| El GPT da recomendaciones operativas | Faltan límites en instrucciones | Reforzar que solo entrega lectura orientativa |

---

## Reflexión final

Cuando termines, responde:

- ¿Qué diferencia hay entre pegar una URL y pegar un esquema OpenAPI?
- ¿Por qué fue útil cargar un archivo de ubicaciones?
- ¿Qué parte del ejercicio facilita ActionsGPT o ChatGPT?
- ¿Qué riesgos existen al usar datos públicos para análisis operativo?
