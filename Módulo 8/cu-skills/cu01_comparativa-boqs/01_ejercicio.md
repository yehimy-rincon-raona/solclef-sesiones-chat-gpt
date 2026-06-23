# Ejercicio 001 — Skill de revisión de BOQs SAE

> **Módulo 3 — Skills de ChatGPT**
> Duración estimada: 40 minutos

---

## Objetivo

Construir un skill operativo que analice un Excel de ofertas de licitación y produzca automáticamente una tabla de alertas con precios anómalos, partidas omitidas y desviaciones entre licitadores.

---

## Contexto

El equipo de Proyectos de  está evaluando tres ofertas para la sustitución de inversores en la Planta P-07 (Badajoz Sur). Cada proveedor entregó su BOQ con precios unitarios y totales por partida.

Antes de la reunión de adjudicación, el responsable necesita identificar qué partidas tienen precio 0, cuáles ha omitido algún proveedor y qué diferencias de precio superan el 30% entre ofertas. Tienes el BOQ en `insumos/boq-oferta-ficticia-sae.md`.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---------|--------|-------------------|
| `boq-oferta-ficticia-sae.md` | BOQ con ofertas de 3 licitadores para la Planta P-07 | `insumos/` |

---

## Instrucciones del ejercicio

### Paso 1 — Definir el skill antes de escribirlo

Antes de abrir ChatGPT, completa esta ficha en papel o en un documento:

| Componente | Tu respuesta |
|------------|-------------|
| Nombre del skill | `Revision_BOQ_SAE` |
| Objetivo | ¿Cuándo debe activarse? |
| Input esperado | ¿Qué datos necesita recibir? |
| Lógica de procesamiento | ¿Qué pasos debe seguir? |
| Formato de salida | ¿Cómo debe presentar los resultados? |
| Criterio de calidad | ¿Cuándo la respuesta es correcta? |

---

### Paso 2 — Crear el skill con el Skill Creator

1. Abre ChatGPT con tu cuenta (Plus, Teams o Enterprise) e inicia una conversación nueva.
2. En el campo de texto escribe `/` y selecciona **@skill-creator** del submenú.
3. Describe en lenguaje natural qué debe hacer el skill (qué analiza, qué detecta, qué entrega).
4. Responde las preguntas que haga el @skill-creator sobre formato del archivo, umbrales de alerta y formato de salida.
5. Descarga el **skill.zip** que genera ChatGPT e instálalo.
6. Verifica que el skill aparece en el submenú al escribir `/`.

Consulta `02_paso-a-paso.md` para los prompts exactos de cada pregunta.

---

### Paso 3 — Cargar el BOQ y ejecutar el análisis

1. Escribe `/` y selecciona el skill instalado del submenú, o escríbelo directamente: `@solar-tender-review`.
2. Adjunta el archivo `insumos/boq-oferta-ficticia-sae.md`.
3. Usa este prompt:

```text
Analiza las ofertas de los tres licitadores — Electrosolar Ibérica, SunTech Instalaciones y Renovables del Sur — y devuelve la tabla de alertas completa ordenada por gravedad, seguida del resumen por proveedor y la lista de partidas que requieren aclaración.
```

---

### Paso 4 — Revisar el resultado

Verifica que la respuesta incluya:

- Una tabla de alertas con columnas: Partida · Tipo de alerta · Licitador afectado · Detalle.
- Un resumen ejecutivo con el recuento de alertas por licitador y por tipo.
- Una lista de partidas que requieren aclaración antes de adjudicar.

Si la tabla está incompleta o el formato no es el esperado, ajusta las instrucciones del skill y repite el paso 3.

---

### Paso 5 — Prueba de consistencia

Vuelve a ejecutar el mismo skill con los mismos datos y comprueba que el resultado tiene la misma estructura. El skill debe producir el mismo formato independientemente de cuántas veces se invoque.

---

## Entregable

Al finalizar debes tener:

1. Las instrucciones del skill en ChatGPT, adoptadas y funcionando.
2. Una tabla de alertas generada a partir del BOQ de la Planta P-07.
3. Un resumen ejecutivo con el recuento por licitador.
4. Una nota con al menos un criterio de alerta que añadirías para tu área de trabajo.

---

## Criterios de éxito

| Criterio | Verificación |
|----------|--------------|
| El skill detecta todos los precios en 0 del BOQ | Sí / No |
| La tabla incluye desviaciones superiores al 30% | Sí / No |
| El resumen ejecutivo tiene el recuento por licitador | Sí / No |
| El formato de salida es consistente entre ejecuciones | Sí / No |
| Todos los datos citados provienen del archivo adjunto | Sí / No |

---

## Resultado de referencia

Al ejecutar el skill con el BOQ ficticio de la Planta P-07, un resultado correcto debe mostrar:

| Verificación | Resultado esperado |
|---|---|
| Anomalías detectadas (precios 0 sembrados) | 7 de 7 |
| Licitador con más alertas críticas | SunTech Instalaciones |
| Licitador más consistente técnicamente | Electrosolar Ibérica |
| Oferta más baja con mayor riesgo | SunTech Instalaciones — 47.960 € |
| Total partidas que requieren aclaración | 14 |

**Conclusión del ejercicio:** el skill detecta las 7 anomalías sembradas en el BOQ, genera la tabla de alertas ordenada por gravedad, produce un resumen comparativo por proveedor y entrega una lista priorizada de aclaraciones. El análisis que normalmente requeriría 2–4 horas de revisión manual queda completado en segundos, y el criterio de adjudicación sigue siendo responsabilidad del equipo de Proyectos.

---

## Reflexión final

Cuando termines, responde:

- ¿Qué parte del proceso de revisión de BOQs se acelera más con este skill?
- ¿Qué decisiones siguen requiriendo criterio humano que el skill no puede tomar?
- ¿Qué otros documentos de licitación o compras podrían analizarse con una versión ampliada de este skill?
