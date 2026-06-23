# Guía rápida - Opción "Importar desde URL" en acciones de GPT

> Documento de apoyo para ejercicios de GPTs personalizados con acciones  
> Documento creado con fines formativos

---

## 1. Para qué sirve esta guía

Esta guía explica qué significa la opción **Importar desde URL** cuando se configura una acción en un GPT personalizado.

La opción puede generar dudas porque parece que permite pegar cualquier URL de una API, pero no funciona así.

---

## 2. Qué es "Importar desde URL"

En la pantalla de acciones del GPT aparece una opción llamada:

```text
Importar desde URL
```

Esta opción sirve para cargar automáticamente un **esquema OpenAPI** desde una URL pública.

Es decir, permite traer un archivo que ya describe la API en formato estructurado.

---

## 3. Qué tipo de URL acepta

La URL debe apuntar directamente a un archivo de especificación OpenAPI.

Normalmente será algo parecido a:

```text
https://api.ejemplo.com/openapi.yaml
```

o:

```text
https://api.ejemplo.com/openapi.json
```

o:

```text
https://api.ejemplo.com/swagger.json
```

---

## 4. Qué NO se debe pegar ahí

No se debe pegar una URL normal de documentación, como:

```text
https://open-meteo.com/en/docs
```

Tampoco se debe pegar un endpoint de consulta, como:

```text
https://api.open-meteo.com/v1/forecast
```

Estas URLs son útiles para entender la API, pero no son un esquema OpenAPI completo.

---

## 5. Diferencia entre documentación, endpoint y esquema OpenAPI

| Tipo de URL | Ejemplo | ¿Sirve para Importar desde URL? | Por qué |
|---|---|---:|---|
| Documentación web | `https://open-meteo.com/en/docs` | No | Es una página para humanos |
| Endpoint de API | `https://api.open-meteo.com/v1/forecast` | No | Es una ruta para consultar datos |
| Esquema OpenAPI | `https://api.ejemplo.com/openapi.yaml` | Sí | Es un contrato técnico legible por sistemas |
| Swagger JSON | `https://api.ejemplo.com/swagger.json` | Sí | Es una especificación estructurada de la API |

---

## 6. Por qué no funciona con cualquier URL

El botón **Importar desde URL** no lee la documentación como lo haría una persona.

Lo que espera encontrar es un archivo estructurado con información como:

```yaml
openapi: 3.1.0
info:
  title: Nombre de la API
servers:
  - url: https://api.ejemplo.com
paths:
  /ruta:
    get:
      operationId: nombreDeLaOperacion
```

Si la URL no contiene algo así, la importación fallará o no generará acciones disponibles.

---

## 7. Cómo saber si una URL puede importarse

Antes de usar **Importar desde URL**, revisa si la URL termina en algo parecido a:

```text
openapi.yaml
```

```text
openapi.json
```

```text
swagger.json
```

```text
api-docs
```

También puedes abrir la URL en el navegador.

Si ves una página visual con texto, menús y botones, probablemente es documentación para humanos.

Si ves texto estructurado en YAML o JSON, probablemente sí puede importarse.

---

## 8. Cómo se ve una URL válida

Una URL válida podría mostrar contenido parecido a esto:

```yaml
openapi: 3.0.0
info:
  title: Example API
  version: 1.0.0
servers:
  - url: https://api.example.com
paths:
  /users:
    get:
      summary: List users
```

O en JSON:

```json
{
  "openapi": "3.0.0",
  "info": {
    "title": "Example API",
    "version": "1.0.0"
  },
  "paths": {}
}
```

---

## 9. Cómo usar "Importar desde URL"

Si tienes una URL válida de OpenAPI o Swagger:

1. Entra al creador del GPT.
2. Ve a **Configurar**.
3. Baja a **Acciones**.
4. Selecciona **Crear nueva acción**.
5. Haz clic en **Importar desde URL**.
6. Pega la URL del archivo OpenAPI o Swagger.
7. Confirma la importación.
8. Revisa el campo **Esquema**.
9. Haz clic en **Formato**.
10. Revisa que aparezcan acciones disponibles.

---

## 10. Ejercicio de prueba sencillo

Este ejercicio sirve para entender la opción sin afectar el caso principal.

### Objetivo

Probar qué pasa cuando se intenta importar una URL que no es un esquema OpenAPI.

### Prueba A - URL de documentación

Intenta importar esta URL:

```text
https://open-meteo.com/en/docs
```

Resultado esperado:

```text
No debería funcionar como esquema OpenAPI.
```

Explicación:

```text
Es una página de documentación para humanos, no un archivo OpenAPI.
```

---

### Prueba B - URL de endpoint

Intenta importar esta URL:

```text
https://api.open-meteo.com/v1/forecast
```

Resultado esperado:

```text
No debería funcionar como esquema OpenAPI.
```

Explicación:

```text
Es un endpoint que devuelve datos cuando se le pasan parámetros, pero no describe toda la API.
```

---

### Prueba C - Esquema generado manualmente

Usa ActionsGPT o ChatGPT para generar el YAML OpenAPI.

Luego pega ese YAML directamente en el campo **Esquema**.

Resultado esperado:

```text
Sí debería funcionar.
```

Explicación:

```text
El campo Esquema necesita una especificación OpenAPI completa.
```

---

## 11. ¿Se puede hacer el ejercicio usando Importar desde URL?

Sí, pero solo si tienes una URL pública que apunte directamente al esquema OpenAPI de la API.

Para el ejercicio de Open-Meteo, el flujo recomendado es:

```text
Documentación de Open-Meteo → ActionsGPT genera YAML → pegar YAML en Esquema
```

No se recomienda usar **Importar desde URL** para este ejercicio porque la URL de documentación y el endpoint no son un esquema OpenAPI listo para importar.

---

## 12. Qué responder si un alumno pregunta

### Pregunta

```text
¿Puedo pegar aquí la URL de la API?
```

### Respuesta recomendada

```text
Solo si esa URL apunta a un archivo OpenAPI o Swagger. Si es una página de documentación o un endpoint normal, no funcionará. Para este ejercicio vamos a generar el esquema con ActionsGPT y pegar el YAML en el campo Esquema.
```

---

### Pregunta

```text
¿Por qué no puedo pegar https://api.open-meteo.com/v1/forecast?
```

### Respuesta recomendada

```text
Porque esa URL sirve para consultar datos, no para describir cómo funciona toda la API. El campo Esquema necesita una especificación OpenAPI completa con servidor, rutas, método, parámetros y respuesta esperada.
```

---

### Pregunta

```text
¿Cuándo sí usaría Importar desde URL?
```

### Respuesta recomendada

```text
Cuando el proveedor de la API publique una URL directa a su archivo OpenAPI o Swagger, por ejemplo openapi.yaml, openapi.json o swagger.json.
```

---

## 13. Resumen final

La opción **Importar desde URL** sirve para traer un esquema OpenAPI ya publicado.

No sirve para convertir automáticamente cualquier página de documentación en una acción.

Para este ejercicio:

```text
No usamos Importar desde URL como paso principal.
Usamos ActionsGPT o ChatGPT para crear el esquema.
Luego pegamos el YAML en el campo Esquema.
```

Idea clave:

```text
Importar desde URL funciona con esquemas OpenAPI.
No funciona con cualquier URL de documentación o endpoint.
```
