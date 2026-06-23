# CU03 - Paso a paso - Configuración del GPT Monitor Meteoenergético Solclef

> Módulo 01 - GPTs personalizados - Solclef  
> Documento ficticio creado con fines formativos

---

## Archivos necesarios

| Archivo | Uso |
|---|---|
| `configuracion/instrucciones-gpt.md` | Se copia en el campo Instrucciones del GPT |
| `configuracion/prompt-para-generar-openapi.md` | Se copia en ActionsGPT o ChatGPT para generar el esquema OpenAPI |
| `insumos/ubicaciones-de-prueba.md` | Se carga como conocimiento del GPT |
| `prompts/prompts-de-uso.md` | Contiene mensajes cortos para validar el GPT |

---

## 1. Acceder al creador de GPTs

1. Ve a ChatGPT.
2. Inicia sesión con una cuenta que permita crear GPTs.
3. En el menú lateral, selecciona **Explorar GPTs**.
4. Selecciona **Crear**.
5. Abre la pestaña **Configurar**.

---

## 2. Completar nombre y descripción

**Nombre**

```text
GPT Monitor Meteoenergético Solclef
```

**Descripción**

```text
Consulta datos meteorológicos públicos para ubicaciones de prueba y resume variables relevantes para contexto meteoenergético de forma clara y orientativa.
```

---

## 3. Configurar iniciadores de conversación

Agrega estos iniciadores:

```text
Consulta el contexto meteoenergético para Badajoz
```

```text
Resume temperatura, nubosidad, viento y radiación solar para Sevilla
```

```text
Compara el contexto meteoenergético de Badajoz y Sevilla
```

```text
Explica los datos meteorológicos disponibles sin tomar decisiones operativas
```

---

## 4. Copiar las instrucciones

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque indicado para el campo **Instrucciones**.
3. Pégalo en el campo **Instrucciones** del GPT.

---

## 5. Cargar conocimiento

1. En la sección **Conocimiento**, selecciona **Subir archivos**.
2. Sube el archivo:

```text
insumos/ubicaciones-de-prueba.md
```

Este archivo contiene una tabla con ciudades y coordenadas.

El objetivo es que el usuario pueda escribir:

```text
Consulta el contexto meteoenergético para Badajoz.
```

Y no tenga que escribir:

```text
Consulta las coordenadas 38.8794, -6.9707.
```

---

## 6. Crear el esquema OpenAPI con ayuda de ActionsGPT o ChatGPT

El campo **Esquema** de una acción no acepta solo una URL.

No pegues esto directamente en el esquema:

```text
https://api.open-meteo.com/v1/forecast
```

Esa URL es solo el endpoint de la API.

Lo que se necesita es un esquema OpenAPI completo.

Para generarlo:

1. Abre ActionsGPT o un chat normal de ChatGPT.
2. Abre el archivo:

```text
configuracion/prompt-para-generar-openapi.md
```

3. Copia el prompt principal.
4. Pégalo en ActionsGPT o ChatGPT.
5. Espera la respuesta.
6. Verifica que la respuesta genere un bloque YAML.
7. Copia todo el bloque YAML generado.

---

## 7. Agregar la acción

1. Regresa al creador del GPT.
2. En la sección **Acciones**, selecciona **Crear nueva acción**.
3. En **Autenticación**, selecciona:

```text
Ninguno
```

4. En **Esquema**, pega el YAML generado.
5. En **Política de privacidad**, pega:

```text
https://open-meteo.com/en/terms
```

6. Haz clic en **Formato**.

---

## 8. Validar que la acción fue reconocida

Después de hacer clic en **Formato**, baja a **Acciones disponibles**.

Debe aparecer una operación con un nombre similar a:

```text
consultarPronosticoMeteoenergetico
```

Si no aparece, revisa:

- Que el YAML comience con `openapi: 3.1.0`.
- Que exista una sección `servers`.
- Que `servers` incluya `https://api.open-meteo.com`.
- Que exista una sección `paths`.
- Que `paths` incluya `/v1/forecast`.
- Que exista un `operationId`.
- Que la indentación del YAML no se haya dañado al copiarlo.

---

## 9. Configurar capacidades

| Capacidad | Estado |
|---|---|
| Búsqueda web | Desactivada |
| Generación de imágenes | Desactivada |
| Canvas | Opcional |
| Análisis de datos | Opcional |
| Acciones | Activada |

---

## 10. Probar el GPT

Abre una conversación con el GPT y usa este prompt:

```text
Consulta el contexto meteoenergético para Badajoz.
```

El GPT debería:

1. Leer el archivo de ubicaciones.
2. Encontrar las coordenadas de Badajoz.
3. Usar la acción configurada.
4. Devolver una tabla con datos meteorológicos disponibles.
5. Explicar los datos de forma orientativa.

---

## 11. Validar el resultado

Comprueba que la respuesta incluya:

- Ubicación consultada.
- Coordenadas usadas.
- Fuente pública.
- Variables disponibles.
- Tabla con datos devueltos por la API.
- Interpretación breve y orientativa.
- Advertencia de que no sustituye sistemas operativos ni criterio técnico.

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---|---|---|
| El GPT pide coordenadas para Badajoz | No se cargó el archivo de ubicaciones | Subir `ubicaciones-de-prueba.md` a Conocimiento |
| El campo Esquema muestra `null` | No se pegó el YAML correctamente | Volver a pegar el esquema generado |
| Error en `servers` | Se pegó solo la URL del endpoint | Pegar el esquema OpenAPI completo |
| No aparece la acción | Falta `operationId` o hay error de indentación | Pedir a ActionsGPT o ChatGPT que revise el YAML |
| El GPT no usa la acción | Las instrucciones no son claras | Revisar instrucciones del GPT |
| La API no devuelve una variable | Variable no disponible o mal escrita | Revisar parámetros en el esquema generado |

---

## Nota importante

Este ejercicio no busca que el alumno memorice OpenAPI.

Busca que entienda el flujo:

```text
Ubicación de prueba → coordenadas en conocimiento → acción del GPT → API pública → respuesta en tabla
```
