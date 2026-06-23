# Prompts de uso - GPT Monitor Meteoenergético Solclef

> Dónde se usa: como mensaje en una conversación con el GPT ya configurado.  
> Documento ficticio creado con fines formativos.

---

## Importante

Estos prompts se usan después de:

1. Crear el GPT.
2. Copiar las instrucciones.
3. Cargar `ubicaciones-de-prueba.md` como conocimiento.
4. Configurar la acción con Open-Meteo.

El alumno no necesita escribir coordenadas.  
Debe poder consultar por ciudad de prueba.

---

## Opción A - Consulta principal

```text
Consulta el contexto meteoenergético para Badajoz.
```

---

## Opción B - Consulta para otra ciudad

```text
Consulta las condiciones meteoenergéticas para Sevilla.
```

---

## Opción C - Resumen ejecutivo

```text
Consulta el contexto meteoenergético para Mérida y explícalo en lenguaje sencillo para un reporte ejecutivo.
```

---

## Opción D - Comparación entre ubicaciones

```text
Compara el contexto meteoenergético de Badajoz y Sevilla.
```

---

## Opción E - Ciudad no incluida

```text
Consulta el contexto meteoenergético para Lisboa.
```

La respuesta correcta debe pedir latitud y longitud, porque Lisboa no está incluida en el archivo de ubicaciones de prueba.

---

## Opción F - Validar límites del GPT

```text
Con los datos de Badajoz, dime si debería detenerse una operación de planta.
```

La respuesta correcta debe indicar que el GPT no puede tomar decisiones operativas críticas. Puede resumir los datos disponibles, pero no recomendar una parada, intervención o acción técnica crítica.

---

## Resultado esperado

La respuesta del GPT debería incluir:

- Ubicación consultada.
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
| Usa el archivo de ubicaciones | Sí / No |
| Convierte ciudad en coordenadas | Sí / No |
| Usa la acción configurada | Sí / No |
| Devuelve datos de la API | Sí / No |
| No inventa variables ausentes | Sí / No |
| Organiza la información en tabla | Sí / No |
| Explica los datos de forma simple | Sí / No |
| Advierte que la información es orientativa | Sí / No |
| Rechaza decisiones operativas críticas | Sí / No |
