-------------------------------------------------------------------
Prompt (Paso 1)
-------------------------------------------------------------------
Actúa como analista de producto.
Tarea: extrae SOLO hechos verificables del texto. NO propongas soluciones. NO infieras.

Reglas:
- Si un dato no aparece, deja "" o "TBD".
- Mantén fechas y números literal.
- No agregues requisitos que no estén en el texto.

Devuelve en JSON exactamente con estas claves:
{
  "producto": "",
  "objetivo_mvp": "",
  "flujo_reserva": [],
  "decisiones": [],
  "integraciones": [],
  "notificaciones": [],
  "datos_a_capturar": [],
  "fechas_clave": [],
  "riesgos": [],
  "acuerdos": []
}

Texto:
<<<
REUNIÓN | Definición MVP - App de reservas "QuickSlot"
Fecha: 05/02/2026
Asistentes: Paula (PM), Diego (UX), Camila (Dev), Andrés (Marketing)

1) Paula: El MVP debe permitir reservar citas en 3 pasos: seleccionar servicio, elegir horario y confirmar.
2) Diego: En pruebas internas, los usuarios se confunden si pedimos registro al inicio. Propongo permitir reservar como invitado y pedir registro al final.
3) Camila: Integración con calendario: en MVP solo Google Calendar. Outlook lo dejamos para fase 2.
4) Paula: Necesitamos que el usuario reciba confirmación por email y recordatorio 24 horas antes.
5) Andrés: Para lanzamiento, necesitamos capturar el canal de adquisición (Instagram, Google, Referido) pero sin fricción extra.
6) Paula: Fecha objetivo demo interna: 18/02/2026.
7) Riesgo: si no definimos política de cancelación, soporte se va a saturar.
8) Acuerdo: Diego entrega wireframes el 10/02/2026.
9) Acuerdo: Camila estima esfuerzo de integración con Google Calendar el 12/02/2026.
10) Acuerdo: Paula define política de cancelación y reprogramación el 11/02/2026.
>>>

-------------------------------------------------------------------
PASO 2 — BACKLOG (tabla priorizada)
-------------------------------------------------------------------

Con base en el JSON, construye un backlog de MVP.
Reglas:
- No inventes features.
- Si falta un responsable, pon "TBD".
- Incluye solo lo que está en el JSON.

Devuelve tabla Markdown con columnas:
Historia (Como usuario...) | Criterios de aceptación | Prioridad (Alta/Media/Baja) | Responsable | Fecha objetivo

JSON:
<<<PEGA AQUÍ EL JSON DEL PASO 1>>>


-------------------------------------------------------------------
PASO 3 — MENSAJE DE ALINEACIÓN (Slack/Teams)
-------------------------------------------------------------------
Redacta un mensaje para Slack/Teams de alineación del MVP.
Usa SOLO el backlog como fuente.

Requisitos:
- 8 a 12 líneas
- Estructura: Resumen + Decisiones + Próximos pasos + Fechas
- Tono: claro, ejecutivo y accionable
- No inventes información

Backlog:
<<<PEGA AQUÍ LA TABLA DEL PASO 2>>>


-------------------------------------------------------------------
PASO 4 — AUDITORÍA (verificación por checklist)
-------------------------------------------------------------------
Actúa como revisor de comunicaciones de producto.
Evalúa el mensaje con puntaje 1–5 en:
1) Claridad
2) Accionabilidad
3) Completitud (decisiones + fechas)
4) No inventa información
5) Formato (fácil de escanear)

Devuelve:
- Puntaje por criterio
- 5 mejoras concretas
- Versión final mejorada

Mensaje:
<<<PEGA AQUÍ EL MENSAJE DEL PASO 3>>>
