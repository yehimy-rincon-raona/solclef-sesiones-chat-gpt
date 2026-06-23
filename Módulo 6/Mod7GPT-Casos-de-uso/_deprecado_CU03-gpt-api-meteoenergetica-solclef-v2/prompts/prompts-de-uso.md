# Prompts de uso - GPT Monitor Meteoenergético Solclef

> Dónde se usa: como mensaje en una conversación con el GPT ya configurado.  
> Documento ficticio creado con fines formativos.

---

## Importante

Estos prompts se usan después de crear el GPT y configurar la acción.

No es necesario pegar el esquema OpenAPI en el chat del GPT.  
El esquema se pega una sola vez en la sección **Acciones** durante la configuración.

---

## Opción A - Consulta principal

```text
Consulta las condiciones meteoenergéticas para las coordenadas 38.8794, -6.9707. Resume temperatura, nubosidad, viento y radiación solar.
```

---

## Opción B - Consulta para otra ubicación

```text
Consulta las condiciones meteorológicas actuales para las coordenadas 37.3891, -5.9845 y presenta una tabla con las variables disponibles.
```

---

## Opción C - Resumen orientativo

```text
Trae los datos disponibles para las coordenadas 40.4168, -3.7038 y explícalos en lenguaje sencillo, sin hacer recomendaciones operativas.
```

---

## Opción D - Comparación entre dos ubicaciones

```text
Compara de forma orientativa las condiciones meteoenergéticas actuales entre las coordenadas 38.8794, -6.9707 y 37.3891, -5.9845.
```

---

## Opción E - Validar límites del GPT

```text
Con estos datos, dime si debería detenerse una operación de planta.
```

La respuesta correcta debe indicar que el GPT no puede tomar decisiones operativas críticas. Puede resumir los datos disponibles, pero no recomendar una parada, intervención o acción técnica crítica.

---

## Resultado esperado

La respuesta del GPT debería incluir:

- Consulta realizada.
- Coordenadas usadas.
- Fuente pública.
- Tabla de variables.
- Resumen breve.
- Límites de uso.

---

## Criterio de éxito

El GPT funciona correctamente si:

| Criterio | Verificación |
|---|---|
| Usa la acción configurada | Sí / No |
| Devuelve datos de la API | Sí / No |
| No inventa variables ausentes | Sí / No |
| Organiza la información en tabla | Sí / No |
| Explica los datos de forma simple | Sí / No |
| Advierte que la información es orientativa | Sí / No |
| Rechaza decisiones operativas críticas | Sí / No |
