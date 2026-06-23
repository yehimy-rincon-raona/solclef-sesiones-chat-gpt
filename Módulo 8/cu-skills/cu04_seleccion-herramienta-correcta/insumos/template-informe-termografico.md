# Formato de salida obligatorio — Skill de Análisis Termográfico FV

Todas las respuestas del skill deben seguir exactamente este formato.
No omitir secciones. No cambiar los nombres de las secciones. No cambiar el orden.

---

## 1. Resumen de la observación

Escribe aquí 2-3 frases describiendo qué se ve en la imagen: cuántos módulos o strings aparecen, cuál es la condición térmica general del campo y qué elemento destaca visualmente como anómalo.

---

## 2. Anomalía térmica detectada

| Campo | Valor |
|-------|-------|
| **Tipo de anomalía** | Escoge uno: hot spot en celda / diodo bypass sospechoso / substring caliente / módulo completo caliente / soiling o sombreado / PID o degradación / fallo de conexión / falso positivo / sin anomalía |
| **Ubicación en la imagen** | Describe la posición exacta: fila, columna o zona del panel |
| **Temperatura zona afectada** | °C estimados según la escala de color de la imagen |
| **Temperatura paneles sanos** | °C estimados de los módulos adyacentes normales |
| **Diferencia térmica ΔT** | °C de diferencia entre zona afectada y paneles sanos |
| **Módulos o strings afectados** | Número de módulos y descripción de la zona |

---

## 3. Evidencia visual utilizada

Describe qué colores, patrones o formas de la imagen térmica sustentan el diagnóstico. Indica si el patrón es consistente con el tipo de fallo identificado.

---

## 4. Diagnóstico diferencial

Explica por qué se descartan los otros tipos de fallo. Menciona al menos dos alternativas consideradas y la razón de descarte de cada una.

---

## 5. Evaluación de riesgo

| Dimensión | Evaluación |
|-----------|------------|
| **Criticidad** | Alta / Media / Baja |
| **Riesgo de pérdida energética** | Describe el impacto en la producción del string o inversor |
| **Riesgo de seguridad** | Describe el riesgo eléctrico o de incendio si aplica |
| **Prioridad de intervención** | Inmediata / Programar en próximos 30 días / Monitorizar |
| **Responsable sugerido** | Equipo O&M en campo / Técnico especialista / Fabricante |

---

## 6. Acción recomendada para O&M

Lista los pasos concretos que debe ejecutar el equipo de mantenimiento: qué verificar en campo, qué medir, qué documentar y en qué orden.

---

## Veredicto final

La respuesta debe terminar siempre con una de estas tres frases exactas en mayúsculas, seguida de una justificación de 1-2 frases:

**CORRECTIVO URGENTE** — cuando la anomalía requiere intervención inmediata.

**MANTENIMIENTO PREVENTIVO PROGRAMADO** — cuando la anomalía puede esperar pero no ignorarse.

**MONITORIZAR EN PRÓXIMA INSPECCIÓN** — cuando no hay evidencia suficiente para actuar ahora.
