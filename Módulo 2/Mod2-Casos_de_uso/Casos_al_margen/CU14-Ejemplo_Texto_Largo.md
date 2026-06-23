-------------------------------------------------------------------
BLOQUE 1/3 — Contexto + objetivos + decisiones iniciales
-------------------------------------------------------------------
REUNIÓN | Kickoff MVP - QuickSlot (App de reservas)
Fecha: 05/02/2026
Asistentes: Paula (PM), Diego (UX), Camila (Dev), Andrés (Marketing), Sara (Soporte)

Paula: El objetivo del MVP es reducir el tiempo de reserva a menos de 2 minutos.
Paula: El flujo debe ser en 3 pasos: Servicio → Horario → Confirmación.

Diego: En pruebas internas, cuando pedimos registro al inicio, 4 de 6 usuarios abandonan.
Diego: Propongo permitir reservar como invitado y pedir registro al final, cuando ya confirmaron.
Paula: Aprobado para el MVP: invitado primero, registro al final.

Camila: Para calendario, en MVP solo Google Calendar. Outlook lo dejamos para fase 2 porque complica permisos.
Paula: Ok, Google Calendar en MVP.

Andrés: Marketing necesita medir canal de adquisición (Instagram, Google, Referido).
Diego: Si ponemos un formulario extra, sube la fricción. Podríamos capturarlo con un selector simple al final.
Paula: Decisión: capturaremos el canal al final, sin agregar un paso adicional al flujo.

-------------------------------------------------------------------
BLOQUE 1/3 — Contexto + objetivos + decisiones iniciales
-------------------------------------------------------------------
Paula: Notificaciones mínimas: confirmación por email inmediata y recordatorio 24 horas antes.
Camila: Email ok. Recordatorio 24h requiere un job programado. Se puede, pero hay que definir si se enviará aun si el usuario reprograma.
Paula: Para MVP, si reprograma, el recordatorio se recalcula automático.

Sara (Soporte): Si no definimos política de cancelación, vamos a tener tickets por todo.
Sara: La gente cancela el mismo día y pide devolución, necesitamos reglas claras.
Paula: Riesgo anotado: sin política clara, se dispara soporte. Me lo asigno.

Diego: En UI, agrego microcopy claro sobre cancelación y reprogramación, pero necesito la política escrita.
Paula: Bien.

Andrés: Para lanzamiento, necesitamos una landing simple con CTA a reservar.
Paula: La landing no entra en MVP del producto, pero sí la podemos tener como "pieza de marketing" paralela.
Camila: Ok, pero el tracking debe ir por UTM, no por desarrollo dentro del flujo en MVP.
Andrés: Acepto UTM para esta fase.

Paula: Fechas: wireframes el 10/02; política de cancelación el 11/02; estimación integración Google Calendar el 12/02; demo interna el 18/02.
-------------------------------------------------------------------
BLOQUE 3/3 — Acuerdos, tareas, dudas abiertas y próximos pasos
-------------------------------------------------------------------
Acuerdos:
- Diego entrega wireframes (flujo 3 pasos + invitado) el 10/02/2026.
- Paula define política de cancelación y reprogramación el 11/02/2026.
- Camila entrega estimación de integración con Google Calendar el 12/02/2026.

Pendientes:
- Definir si el recordatorio 24h se envía por email únicamente o también por WhatsApp (no decidido).
- Definir idioma inicial: español por defecto, pero Andrés quiere versión en inglés para campaña (no decidido).
- Confirmar si el canal de adquisición se captura con un selector obligatorio o opcional (no decidido).

Paula: La demo interna del 18/02 debe mostrar: reserva completa, confirmación email, y el evento reflejado en Google Calendar.
Camila: De acuerdo.

Riesgos:
- Si no se cierra política de cancelación a tiempo, el flujo queda incompleto y soporte recibe tickets.
- Si el recordatorio 24h queda mal definido, puede generar confusión con reprogramaciones.

Cierre:
Paula: Enviaré el resumen por correo hoy y confirmamos cambios antes de fin de día.
