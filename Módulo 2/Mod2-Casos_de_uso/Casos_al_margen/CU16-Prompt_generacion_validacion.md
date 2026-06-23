-------------------------------------------------------------------
Prompt (Genera un correo de seguimiento al proveedor.)
-------------------------------------------------------------------
Genera un correo de seguimiento al proveedor.

Contexto:
- Hubo retraso en confirmación de orden.
- Necesitamos fecha de entrega confirmada.
- Tono: cordial, firme, sin amenazas.
- No podemos prometer descuentos ni cambios de contrato.

Salida:
1) Correo (asunto + cuerpo)
2) Luego crea una tabla "Validación" con columnas: Criterio / Cumple (Sí/No) / Evidencia textual / Ajuste sugerido.
Criterios:
- Pide fecha de entrega específica
- Define siguiente paso si no responden en 48h
- No promete descuentos ni cambios contractuales
- Tono cordial y profesional

-------------------------------------------------------------------
Prompt (Resumen estructurado por bloque)
-------------------------------------------------------------------
Actúa como revisor de calidad (QA) de comunicación empresarial.

Tarea: Revisa el texto de abajo contra este checklist. 
No reescribas el texto. Solo evalúa.

Checklist (criterios de aceptación):
1) Pide una fecha de entrega específica (no "lo antes posible").
2) Define el siguiente paso si no responden en 48 horas.
3) No promete descuentos ni cambios contractuales.
4) Tono: cordial, firme, profesional, sin amenazas.
5) Máximo 140 palabras (sin contar saludo y firma).

Formato de salida obligatorio:
A) Tabla de validación con columnas:
- Criterio
- Cumple (Sí/No)
- Evidencia textual (cita exacta)
- Corrección sugerida (1 línea)

B) Texto corregido final (asunto + cuerpo), cumpliendo TODO el checklist.

Texto a revisar:
<<<
[PEGA AQUÍ EL CORREO GENERA]()
