PASO 1 — Extracción (solo hechos, sin inventar)
----------------------------------------------------------

Actúa como analista de operaciones.
Tarea: extrae hechos verificables del texto. NO redactes email. NO infieras.

Devuelve en JSON:
{
  "proveedor": "",
  "po_numero": "",
  "fecha_envio_po": "",
  "fecha_compromiso": "",
  "estado_confirmacion": "",
  "faltantes": [],
  "acciones_acordadas": [],
  "riesgos": [],
  "fecha_limite_respuesta": ""
}

-------------------------------------------------------------------
PASO 2 — Plan de acción (tabla operativa)
-------------------------------------------------------------------

Con base en este JSON, construye un plan de acción.
Reglas:
- No inventes datos.
- Si falta una fecha o responsable, pon "TBD".
- Devuelve una tabla en Markdown con columnas:
Acción | Responsable | Fecha límite | Prioridad | Riesgo si no se hace

JSON:
<<<PEGA AQUÍ EL JSON DEL PASO 1>>>

-------------------------------------------------------------------
PASO 3 — Redacción del correo (solo con la tabla como fuente)
-------------------------------------------------------------------
Redacta un correo al proveedor usando SOLO el plan/tabla como fuente.
Requisitos:
- Incluye: Asunto, saludo, contexto breve, lista clara de lo requerido, fecha límite, y cierre.
- Tono: profesional, directo y colaborativo (no agresivo).
- No inventes información adicional.
- Longitud: 120–180 palabras.

Plan:
<<<PEGA AQUÍ LA TABLA DEL PASO 2>>>

-------------------------------------------------------------------
PASO 4 — Auditoría (checklist y versión mejorada)
-------------------------------------------------------------------
Actúa como revisor de calidad para comunicaciones operativas.

Evalúa este email con puntaje 1–5 en:
1) Claridad del objetivo
2) Datos completos (PO, acción requerida)
3) Tono profesional y directo
4) Próximo paso explícito (qué necesito y cuándo)
5) Urgencia bien planteada

Devuelve:
- Puntaje por criterio
- 5 mejoras concretas
- Versión final mejorada (mantén el contenido sin inventar)

EMAIL:
<<<PEGA AQUÍ EL EMAIL DEL PASO 3>>>
