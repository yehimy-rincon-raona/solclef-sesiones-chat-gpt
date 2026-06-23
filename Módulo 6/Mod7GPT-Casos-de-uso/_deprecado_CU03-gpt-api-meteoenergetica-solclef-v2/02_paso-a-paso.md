# CU03 - Paso a paso - Configuración del GPT Monitor Meteoenergético Solclef

> Módulo 01 - GPTs personalizados - Solclef  
> Documento ficticio creado con fines formativos

---

## Archivos necesarios

| Archivo | Uso |
|---|---|
| `configuracion/instrucciones-gpt.md` | Se copia en el campo Instrucciones del GPT |
| `configuracion/prompt-para-generar-openapi.md` | Se copia en ChatGPT para generar el esquema OpenAPI |
| `insumos/coordenadas-ejemplo.md` | Se usa para probar la acción |
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
Consulta datos meteorológicos públicos por coordenadas y resume variables relevantes para contexto meteoenergético de forma clara y orientativa.
```

---

## 3. Configurar iniciadores de conversación

Agrega estos iniciadores:

```text
Consulta las condiciones meteoenergéticas para una ubicación por coordenadas
```

```text
Resume temperatura, nubosidad, viento y radiación solar para estas coordenadas
```

```text
Explica los datos meteorológicos disponibles sin tomar decisiones operativas
```

```text
Compara el contexto meteorológico de hoy para dos ubicaciones
```

---

## 4. Copiar las instrucciones

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque indicado para el campo **Instrucciones**.
3. Pégalo en el campo **Instrucciones** del GPT.
4. Guarda los cambios preliminares.

---

## 5. Crear el esquema OpenAPI con ayuda de ChatGPT

El campo **Esquema** de una acción no acepta solo una URL.

No pegues esto directamente en el esquema:

```text
https://api.open-meteo.com/v1/forecast
```

Esa URL es solo el endpoint de la API.

Lo que se necesita es un esquema OpenAPI completo.

Para generarlo:

1. Abre un chat normal de ChatGPT en otra pestaña.
2. Abre el archivo:

```text
configuracion/prompt-para-generar-openapi.md
```

3. Copia el prompt completo.
4. Pégalo en ChatGPT.
5. Espera la respuesta.
6. Verifica que la respuesta comience con:

```yaml
openapi: 3.1.0
```

7. Copia todo el bloque YAML generado.

---

## 6. Agregar la acción

1. Regresa al creador del GPT.
2. En la sección **Acciones**, selecciona **Crear nueva acción**.
3. En **Autenticación**, selecciona:

```text
Ninguno
```

4. En **Esquema**, pega el YAML generado por ChatGPT.
5. En **Política de privacidad**, pega:

```text
https://open-meteo.com/en/terms
```

6. Haz clic en **Formato**.

---

## 7. Validar que la acción fue reconocida

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
- Que la indentación del YAML no se haya dañado al copiarlo.

---

## 8. Configurar capacidades

| Capacidad | Estado |
|---|---|
| Búsqueda web | Desactivada |
| Generación de imágenes | Desactivada |
| Canvas | Opcional |
| Análisis de datos | Opcional |
| Acciones | Activada |

---

## 9. Probar el GPT

Abre una conversación con el GPT y usa este prompt:

```text
Consulta las condiciones meteoenergéticas para las coordenadas 38.8794, -6.9707. Resume temperatura, nubosidad, viento y radiación solar.
```

El GPT debería usar la acción configurada y devolver una tabla.

---

## 10. Validar el resultado

Comprueba que la respuesta incluya:

- Ubicación o coordenadas consultadas.
- Variables disponibles.
- Tabla con datos devueltos por la API.
- Interpretación breve y orientativa.
- Advertencia de que no sustituye sistemas operativos ni criterio técnico.

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---|---|---|
| El campo Esquema muestra `null` | No se pegó el YAML correctamente | Volver a pegar el esquema generado |
| Error en `servers` | Se pegó solo la URL del endpoint | Pegar el esquema OpenAPI completo |
| No aparece la acción | Falta `operationId` o hay error de indentación | Pedir a ChatGPT que revise el YAML |
| El GPT no usa la acción | Las instrucciones no son claras | Revisar instrucciones del GPT |
| La API no devuelve una variable | Variable no disponible o mal escrita | Revisar parámetros en el esquema generado |

---

## Nota importante

Este ejercicio no busca que el alumno memorice OpenAPI.

Busca que entienda el flujo:

```text
Documentación de API → ChatGPT genera esquema → Acción del GPT → Consulta desde conversación
```
