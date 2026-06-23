# CU01 — Ficha del caso de uso — Comparativa inteligente de BOQs SAE

> Módulo 03 — Skills de ChatGPT

---

## Nombre del caso de uso

**Skill de revisión y comparativa de ofertas de licitación (BOQ)**

Skill operativo que analiza un Excel de ofertas técnicas, detecta precios cero, partidas omitidas y desviaciones entre licitadores, y produce un informe de alertas estandarizado.

---

## Escenario

El equipo de Compras y Proyectos de  recibe periódicamente ofertas de proveedores para trabajos de mantenimiento mayor, sustitución de equipos y obra civil. Cada oferta llega en un Excel (BOQ — Bill of Quantities) con cientos de partidas.

La revisión manual de un BOQ completo consume entre 2 y 4 horas por oferta. Cuando hay varios licitadores, el responsable debe comparar partidas entre columnas, detectar precios sospechosamente bajos o ausentes, e identificar qué proveedor ha omitido partidas críticas.

El skill propuesto automatiza la primera pasada de revisión: detecta anomalías, ordena las alertas por criticidad y presenta un resumen listo para la reunión de adjudicación.

---

## Problema que resuelve

| Situación actual | Impacto |
|------------------|---------|
| Revisión manual de BOQs con cientos de partidas | 2–4 horas por oferta, riesgo de pasar por alto anomalías |
| Sin criterio uniforme de alerta entre revisores | Resultados inconsistentes según quién revisa |
| Comparación visual entre columnas de Excel | Fácil omitir partidas donde un licitador puso precio 0 |
| Informes de revisión redactados desde cero | Tiempo extra y formatos distintos |

El skill no sustituye la decisión de adjudicación. Automatiza la detección de anomalías para que el responsable centre su atención en los puntos críticos.

---

## Objetivo del caso de uso

Construir un skill operativo que reciba un Excel de BOQ con las ofertas de varios licitadores y produzca automáticamente:

| Output | Descripción |
|--------|-------------|
| Tabla de alertas | Partidas con precio 0, partidas omitidas y desviaciones de precio, ordenadas por gravedad (Crítica → Alta → Media → Baja) |
| Resumen por proveedor | Total ofertado, fortalezas, riesgos y evaluación preliminar por licitador |
| Lista de aclaraciones | Partidas que requieren confirmación antes de adjudicar, por orden de prioridad |

---

## Alcance del skill

### El skill debe hacer

- Detectar precios en 0 o celdas vacías → alerta Crítica.
- Identificar partidas presentes en un licitador y ausentes en otro → alerta Crítica.
- Detectar que el precio de un proveedor se desvía más del 30 % respecto a la mediana → alerta Alta.
- Detectar que la diferencia entre precio mínimo y máximo de la partida supera el 50 % → alerta Media.
- Producir una tabla de alertas ordenada: Crítica → Alta → Media → Baja.
- Generar un resumen por proveedor con total ofertado, riesgos principales y evaluación preliminar.

### El skill no debe hacer

- Recomendar a qué licitador adjudicar.
- Interpretar condiciones contractuales o cláusulas técnicas.
- Aceptar datos que no vengan del archivo adjunto.
- Inventar precios ni interpolar valores faltantes.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Responsable de Compras | Revisión inicial de BOQs en procesos de licitación |
| Jefe de Proyectos | Comparativa rápida antes de la reunión de adjudicación |
| Técnico de O&M | Revisión de ofertas de mantenimiento mayor |

---

## Valor esperado

- Reducir de 2–4 horas a menos de 15 minutos la primera revisión de un BOQ.
- Criterio uniforme de alerta independientemente de quién realice la revisión.
- Informe de alertas en formato estándar, listo para adjuntar al expediente.
- Trazabilidad: el skill registra qué archivo se analizó y bajo qué criterios.

---

## Herramienta utilizada

Skill operativo creado y ejecutado en ChatGPT:

- **Método principal:** @skill-creator (escribir `/` en ChatGPT → seleccionar @skill-creator → describir el skill en lenguaje natural → responder preguntas → descargar e instalar el `skill.zip` generado).
- **Método alternativo (fallback):** copiar el bloque de instrucciones de `configuracion/instrucciones-skill.md` como primer mensaje en el chat.
- Archivo BOQ adjuntado en el chat para que el intérprete de código lo procese.
- Análisis de datos activado para lectura y cálculo sobre el Excel.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Las instrucciones del skill definidas y probadas en ChatGPT.
2. Una tabla de alertas generada a partir del BOQ ficticio de SAE.
3. Un resumen ejecutivo con el recuento de alertas por licitador.
4. Una prueba de consistencia: el mismo skill aplicado a los datos del BOQ produce el mismo formato de salida.
5. Una reflexión sobre qué criterios de alerta añadirías para adaptar el skill a tu área de trabajo.
